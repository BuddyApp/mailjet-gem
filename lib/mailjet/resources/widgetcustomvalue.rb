require 'mailjet/resource'

module Mailjet
  class Widgetcustomvalue
    include Mailjet::Resource
    self.resource_path = 'v3/REST/widgetcustomvalue'
    self.public_operations = [:get, :put, :post, :delete]

  end
end
