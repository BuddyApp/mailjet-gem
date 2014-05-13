require 'mailjet/resource'

module Mailjet
  class Openstatistics
    include Mailjet::Resource
    self.resource_path = 'v3/REST/openstatistics'
    self.public_operations = [:get]

    self.read_only = true

  end
end
