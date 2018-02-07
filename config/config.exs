# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :gjithub, GjithubWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZqAlSCV9bt4mXrVVsOubcvRM8Z/JW1Gydkho2YcAildOEJQ60dMxT1coJ5CqKmu9",
  render_errors: [view: GjithubWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Gjithub.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
