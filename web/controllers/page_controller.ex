defmodule Edmin.PageController do
  use Edmin.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
