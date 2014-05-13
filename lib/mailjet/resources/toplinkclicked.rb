require 'mailjet/resource'

module Mailjet
  class Toplinkclicked
    include Mailjet::Resource
    self.resource_path = 'v3/REST/toplinkclicked'
    self.public_operations = [:get]

    self.read_only = true

  end
end
