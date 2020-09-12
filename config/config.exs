# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mju,
  namespace: MJU,
  ecto_repos: [MJU.Repo]

# Configures the endpoint
config :mju, MJUWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BGCyamBoexErBH1c4F5DJNQuxgxxz8BdmBiKqlbKHTkmRqN+Ll56Ny5apbv0+1Gi",
  render_errors: [view: MJUWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MJU.PubSub,
  live_view: [signing_salt: "J5qunASt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
