# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :porje,
  ecto_repos: [Porje.Repo]

# Configures the endpoint
config :porje, PorjeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1Vc8y8yOug2W9DP7werggnfoYNZ8BAGXez/mj5YdRznlRUUXg2KwVs/pR5HPwFHy",
  render_errors: [view: PorjeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Porje.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
