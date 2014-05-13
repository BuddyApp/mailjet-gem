require 'mailjet/resource'

module Mailjet
  class Manycontacts
    include Mailjet::Resource
    self.resource_path = 'v3/REST/manycontacts'
    self.public_operations = [:post]

  end
end
