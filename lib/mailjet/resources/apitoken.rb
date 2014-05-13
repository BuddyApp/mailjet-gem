require 'mailjet/resource'

module Mailjet
  class Apitoken
    include Mailjet::Resource
    self.resource_path = 'v3/REST/apitoken'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
