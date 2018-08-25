# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dockerized_phoenix,
  ecto_repos: [DockerizedPhoenix.Repo]

# Configures the endpoint
config :dockerized_phoenix, DockerizedPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "heObQ9R4fxu6yvIYIMrRPWZqx3zijY2r122whZgQaGqECGYnZA43rNQOy8BNJt72",
  render_errors: [view: DockerizedPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DockerizedPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
