require 'grape/middleware/base'

module Test
  class InvalidQueryParamsMiddleware < Grape::Middleware::Base
    attr_accessor :app, :env

    def initialize(app, **options)
      @app = app
      super
    end

    def call(env)
      dup._call(env)
    end

    def _call(env)
      app.call(env)
    rescue Rack::QueryParser::InvalidParameterError => e
      raise unless e.message =~ /invalid %-encoding/

      throw(:error, status: 400, message: "Invalid Parameter: #{e.message}")

    end
  end
end
