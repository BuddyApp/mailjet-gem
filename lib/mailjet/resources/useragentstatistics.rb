require 'mailjet/resource'

module Mailjet
  class Useragentstatistics
    include Mailjet::Resource
    self.resource_path = 'v3/REST/useragentstatistics'
    self.public_operations = [:get]

    self.read_only = true

  end
end
