# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphical,
  ecto_repos: [Graphical.Repo]

# Configures the endpoint
config :graphical, GraphicalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oqa1mXvtwlsLSwVEngsspwsrvcTvOEKQpJZEWHvvT1zk08pt2g9n1LzIU1Apr2d9",
  render_errors: [view: GraphicalWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Graphical.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
