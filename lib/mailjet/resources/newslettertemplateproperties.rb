require 'mailjet/resource'

module Mailjet
  class Newslettertemplateproperties
    include Mailjet::Resource
    self.resource_path = 'v3/REST/newslettertemplateproperties'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
