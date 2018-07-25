use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :porje, PorjeWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :porje, Porje.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "porje_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
