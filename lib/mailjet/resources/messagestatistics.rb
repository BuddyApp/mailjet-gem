require 'mailjet/resource'

module Mailjet
  class Messagestatistics
    include Mailjet::Resource
    self.resource_path = 'v3/REST/messagestatistics'
    self.public_operations = [:get]

    self.read_only = true

  end
end
