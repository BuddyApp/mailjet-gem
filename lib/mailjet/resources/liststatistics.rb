require 'mailjet/resource'

module Mailjet
  class Liststatistics
    include Mailjet::Resource
    self.resource_path = 'v3/REST/liststatistics'
    self.public_operations = [:get]

    self.read_only = true

  end
end
