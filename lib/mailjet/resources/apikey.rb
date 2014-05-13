require 'mailjet/resource'

module Mailjet
  class Apikey
    include Mailjet::Resource
    self.resource_path = 'v3/REST/apikey'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
