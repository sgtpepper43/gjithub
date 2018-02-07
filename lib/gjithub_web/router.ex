defmodule GjithubWeb.Router do
  use GjithubWeb, :router

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

  scope "/", GjithubWeb do
    pipe_through :browser # Use the default browser stack

    get "/:org/:repo/pull/:pr", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", GjithubWeb do
  #   pipe_through :api
  # end
end
