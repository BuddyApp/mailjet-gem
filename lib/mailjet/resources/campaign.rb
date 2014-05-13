require 'mailjet/resource'

module Mailjet
  class Campaign
    include Mailjet::Resource
    self.resource_path = 'v3/REST/campaign'
    self.public_operations = [:get, :put]

  end
end
