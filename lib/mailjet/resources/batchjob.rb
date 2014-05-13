require 'mailjet/resource'

module Mailjet
  class Batchjob
    include Mailjet::Resource
    self.resource_path = 'v3/REST/batchjob'
    self.public_operations = [:get, :put, :post]

  end
end
