# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :football_report,
  ecto_repos: [FootballReport.Repo]

# Configures the endpoint
config :football_report, FootballReportWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hEl5AfxlwQJxKUfEVViPlxL5iMmDZts+UM9Hnjog/MvvZVFc09COkqhlXNf22dUU",
  render_errors: [view: FootballReportWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: FootballReport.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
