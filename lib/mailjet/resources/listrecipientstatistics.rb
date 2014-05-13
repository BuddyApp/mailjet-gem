require 'mailjet/resource'

module Mailjet
  class Listrecipientstatistics
    include Mailjet::Resource
    self.resource_path = 'v3/REST/listrecipientstatistics'
    self.public_operations = [:get]

    self.read_only = true

  end
end
