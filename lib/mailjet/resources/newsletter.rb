require 'mailjet/resource'

module Mailjet
  class Newsletter
    include Mailjet::Resource
    self.resource_path = 'v3/REST/newsletter'
    self.public_operations = [:get, :put, :post]

  end
end
