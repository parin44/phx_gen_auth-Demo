# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auth_system,
  ecto_repos: [AuthSystem.Repo]

# Configures the endpoint
config :auth_system, AuthSystemWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6HPSe8juDBCzE9p1eDgMtjfFGOPJ6gPcSDSzlFkNJbVikZ9NVHLrDi4SKnYU3AQM",
  render_errors: [view: AuthSystemWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AuthSystem.PubSub,
  live_view: [signing_salt: "87SckvrI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
