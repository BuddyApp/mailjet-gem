require 'rest_client'
require 'mailjet/resource'
require 'active_support/hash_with_indifferent_access'
require 'active_support/core_ext/class'
require 'active_support/core_ext/string'
require 'active_support/core_ext/module/delegation'

module Mailjet
  class Resource

    class << self
      def inherited(subclass)
        subclass.cattr_accessor :resource_path
      end

      def connection=(new_connection)
        @@connection = new_connection
      end

      def connection
        @@connection ||= RestClient::Resource.new(
          "#{Mailjet.config.end_point}/#{resource_path}",
          Mailjet.config.api_key,
          Mailjet.config.secret_key)
      end

      def first(params = {})
        all(params.merge!(limit: 1)).first
      end

      def all(params = {})
        attribute_array = parse_api_json(connection.get(params: params))
        attribute_array.map{ |attributes| instanciate_from_api(attributes) }
      end

      def count
        parse_api_json(connection.get(limit: 1, count_records: 1))[:total]
      end

      def find(id)
        attributes = parse_api_json(connection[id].get).first
        instanciate_from_api(attributes)
      rescue RestClient::ResourceNotFound
        nil
      end

      def create(attributes = {})
        self.new(attributes).tap do |resource|
          resource.save!
          resource.persisted = true
        end
      end

      def instanciate_from_api(attributes = {})
        self.new(attributes.merge(persisted: true))
      end

      def parse_api_json(response_json)
        response_hash = ActiveSupport::JSON.decode(response_json)
        response_data_array = response_hash['Data']
        response_data_array.map{ |response_data| underscore_keys(response_data) }
      end

      def camelcase_keys(hash)
        map_keys(hash, :camelcase)
      end

      def underscore_keys(hash)
        map_keys(hash, :underscore)
      end

      def map_keys(hash, method)
        hash.inject({}) do |_hash, (key, value)|
          new_key = key.to_s.send(method)
          _hash[new_key] = value
          _hash
        end
      end
    end

    attr_accessor :attributes, :persisted

    def initialize(_attributes = nil)
      @persisted = false
      @attributes = ActiveSupport::HashWithIndifferentAccess.new

      self.attributes = _attributes
    end

    def persisted?
      @persisted
    end

    def save
      payload = camelcase_keys(attributes)

      if persisted?
        response = parse_api_json(connection[id].put(payload))
      else
        response = connection.post(payload)
      end

      self.attributes = parse_api_json(response)
      return true
    rescue RestClient::NotModified
      puts "WARNING: NotModified"
      # TODO: return !dirty?
      return false
    end

    def save!
      save || raise(StandardError.new("Resource not persisted"))
    end

    def attributes=(attribute_hash = {})
      attribute_hash.each do |attribute_name, value|
        self.send("#{attribute_name}=", value)
      end
    end

    def update_attributes(attribute_hash = {})
      self.attributes = attribute_hash
      save
    end

    def destroy
      connection[id].delete
    end

    private

    def connection
      self.class.connection
    end

    def camelcase_keys(hash)
      self.class.camelcase_keys(hash)
    end

    def underscore_keys(hash)
      self.class.underscore_keys(hash)
    end

    def parse_api_json(response_json)
      self.class.parse_api_json(response_json)
    end

    def method_missing(method_symbol, *arguments) #:nodoc:
      method_name = method_symbol.to_s

      if method_name =~ /(=|\?)$/
        case $1
        when "="
          attributes[$`] = arguments.first
        when "?"
          attributes[$`]
        end
      else
        return attributes[method_name] if attributes.include?(method_name)
        # not set right now but we know about it
        # return nil if known_attributes.include?(method_name)
        super
      end
    end
  end
end