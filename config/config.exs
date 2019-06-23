# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tailwindcss_phoenix,
  ecto_repos: [TailwindcssPhoenix.Repo]

# Configures the endpoint
config :tailwindcss_phoenix, TailwindcssPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z9wnjtn+nHds38Jm5UTYYKnzePt4JjnH5sVPHdLiGI3lfGBAH/5mV/RvhjM3Z1rV",
  render_errors: [view: TailwindcssPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TailwindcssPhoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
