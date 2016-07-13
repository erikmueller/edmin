defmodule Edmin.Router do
  use Edmin.Web, :router
  use ExAdmin.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # setup the ExAdmin routes on /admin
  scope "/admin", ExAdmin do
    pipe_through :browser

    admin_routes
  end

  scope "/", Edmin do
    pipe_through :browser

    resources "/slidegroups", SlidegroupController, only: [:show]
  end
end
