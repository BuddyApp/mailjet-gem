require 'mailjet/resource'

module Mailjet
  class Domainstatistics
    include Mailjet::Resource
    self.resource_path = 'v3/REST/domainstatistics'
    self.public_operations = [:get]

    self.read_only = true

  end
end
