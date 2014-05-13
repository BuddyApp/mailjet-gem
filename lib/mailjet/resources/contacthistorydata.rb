require 'mailjet/resource'

module Mailjet
  class Contacthistorydata
    include Mailjet::Resource
    self.resource_path = 'v3/REST/contacthistorydata'
    self.public_operations = [:get, :post, :delete]

  end
end
