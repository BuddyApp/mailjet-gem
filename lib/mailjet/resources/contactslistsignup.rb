require 'mailjet/resource'

module Mailjet
  class Contactslistsignup
    include Mailjet::Resource
    self.resource_path = 'v3/REST/contactslistsignup'
    self.public_operations = [:get]

  end
end
