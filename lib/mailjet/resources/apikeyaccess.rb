require 'mailjet/resource'

module Mailjet
  class Apikeyaccess
    include Mailjet::Resource
    self.resource_path = 'v3/REST/apikeyaccess'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
