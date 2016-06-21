# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :edmin, Edmin.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "RgKP2hidthU13uM70dS32jMiEN4DTPqgZPtkqlhLgBKH9NOOPaqr1gdkseKUXBkM",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Edmin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ex_admin,
  repo: Edmin.Repo,
  module: Edmin,
  modules: [
    Edmin.ExAdmin.Dashboard,
  ]

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :xain, :after_callback, {Phoenix.HTML, :raw}
