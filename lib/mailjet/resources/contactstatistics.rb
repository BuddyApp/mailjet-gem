require 'mailjet/resource'

module Mailjet
  class Contactstatistics
    include Mailjet::Resource
    self.resource_path = 'v3/REST/contactstatistics'
    self.public_operations = [:get]

    self.read_only = true

  end
end
