require 'mailjet/resource'

module Mailjet
  class Parseroute
    include Mailjet::Resource
    self.resource_path = 'v3/REST/parseroute'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
