require 'mailjet/resource'

module Mailjet
  class User
    include Mailjet::Resource
    self.resource_path = 'v3/REST/user'
    self.public_operations = [:get, :put]

  end
end
