# frozen_string_literal: true

class Client < ApplicationRecord
  CLIENTS = { smart: HDM::Client::SmartClient }.freeze

  def generate_auth_url(provider, params = {})
    client = CLIENTS[client_type.to_sym]
    client.generate_auth_url(self, provider, params)
  end

  def get_access_token(_code, _providerProfile, params = {})
    client = CLIENTS[client_type.to_sym]
    client.get_access_token(self, provider, params)
  end
end
