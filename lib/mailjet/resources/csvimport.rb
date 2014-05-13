require 'mailjet/resource'

module Mailjet
  class Csvimport
    include Mailjet::Resource
    self.resource_path = 'v3/REST/csvimport'
    self.public_operations = [:get, :put, :post]

  end
end
