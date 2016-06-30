use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :edmin, Edmin.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :edmin, Edmin.Repo,
  adapter: Ecto.Adapters.MySQL,
  url: System.get_env("DATABASE_URL"),
  username: System.get_env("DATABASE_USERNAME"),
  password: System.get_env("DATABASE_PASSWORD"),
  database: "edmin_prod",
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true
