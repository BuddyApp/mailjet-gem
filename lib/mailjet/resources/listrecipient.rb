require 'mailjet/resource'

module Mailjet
  class Listrecipient
    include Mailjet::Resource
    self.resource_path = 'v3/REST/listrecipient'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
