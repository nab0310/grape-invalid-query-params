require 'grape'
require_relative '../api/ping'
require_relative '../api/ping_fixed'

module Test
  class API < ::Grape::API
    prefix 'api'
    format :json
    mount ::Test::Ping
    mount ::Test::PingFixed
  end
end
