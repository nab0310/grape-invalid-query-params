# grape-invalid-query-params

Creating a minimal example for a potential Grape/Rack/someone should handle it issue.

## Setup

`bundle install`

## To reproduce the error

1. Run `bundle exec rackup` to start the server.
2. Hit the `localhost:9292/ping?name=%9g` and you will see an error.

To use the middleware, which only works when grape is mounted on Rack, hit the following endpoint:

`localhost:9292/ping-fixed?name=%9g` -> This will return you a 400, saying your parameter is incorrectly encoded.
