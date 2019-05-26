# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todo_elixir,
  ecto_repos: [TodoElixir.Repo]

# Configures the endpoint
config :todo_elixir, TodoElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "j6YtnKifUph8QRkTn3DJARrHM9Ljhz5oD1NA3YDlhgRs+tQBAIh9xo3VuRdzlM+5",
  render_errors: [view: TodoElixirWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodoElixir.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
