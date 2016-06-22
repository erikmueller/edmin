use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :edmin, Edmin.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :edmin, Edmin.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "edmin_test",
  hostname: "192.168.99.100",
  pool: Ecto.Adapters.SQL.Sandbox
