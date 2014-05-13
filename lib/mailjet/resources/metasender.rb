require 'mailjet/resource'

module Mailjet
  class Metasender
    include Mailjet::Resource
    self.resource_path = 'v3/REST/metasender'
    self.public_operations = [:get, :put, :post]

  end
end
