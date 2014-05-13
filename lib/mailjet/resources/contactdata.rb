require 'mailjet/resource'

module Mailjet
  class Contactdata
    include Mailjet::Resource
    self.resource_path = 'v3/REST/contactdata'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
