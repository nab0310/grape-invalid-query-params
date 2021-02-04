require_relative 'middleware/invalid_query_params'

module Test
  class PingFixed < Grape::API
    use Test::InvalidQueryParamsMiddleware
    format :json
    get '/ping-fixed' do
      { ping: 'pong' }
    end
  end
end
