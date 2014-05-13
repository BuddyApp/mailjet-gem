require 'mailjet/resource'

module Mailjet
  class Sender
    include Mailjet::Resource
    self.resource_path = 'v3/REST/sender'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
