defmodule DockerizedPhoenixWeb.PageController do
  use DockerizedPhoenixWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
