# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :dolb_test, DolbTest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n8XxsGwLof3t451cXY/ffmG6S5k1GU7EcQvQMKU6+v3iwKjReTTJ3YrcxQt+8Gfq",
  render_errors: [view: DolbTest.ErrorView, accepts: ~w(json)],
  pubsub: [name: DolbTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
