require 'mailjet/resource'

module Mailjet
  class Newslettertemplate
    include Mailjet::Resource
    self.resource_path = 'v3/REST/newslettertemplate'
    self.public_operations = [:get, :put, :post]

  end
end
