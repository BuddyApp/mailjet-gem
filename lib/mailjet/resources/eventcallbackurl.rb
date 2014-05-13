require 'mailjet/resource'

module Mailjet
  class Eventcallbackurl
    include Mailjet::Resource
    self.resource_path = 'v3/REST/eventcallbackurl'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
