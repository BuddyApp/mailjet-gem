require 'mailjet/resource'

module Mailjet
  class Campaignstatistics
    include Mailjet::Resource
    self.resource_path = 'v3/REST/campaignstatistics'
    self.public_operations = [:get]

    self.read_only = true

  end
end
