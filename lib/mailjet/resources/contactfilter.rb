require 'mailjet/resource'

module Mailjet
  class Contactfilter
    include Mailjet::Resource
    self.resource_path = 'v3/REST/contactfilter'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
