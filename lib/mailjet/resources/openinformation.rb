require 'mailjet/resource'

module Mailjet
  class Openinformation
    include Mailjet::Resource
    self.resource_path = 'v3/REST/openinformation'
    self.public_operations = [:get]

    self.read_only = true

  end
end
