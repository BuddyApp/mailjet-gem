require 'mailjet/resource'

module Mailjet
  class Apikeytotals
    include Mailjet::Resource
    self.resource_path = 'v3/REST/apikeytotals'
    self.public_operations = [:get]

    self.read_only = true

  end
end
