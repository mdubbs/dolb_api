defmodule DolbTest.Router do
  use DolbTest.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DolbTest do
    pipe_through :api

    get "/heartbeat", DiagnosticController, :heartbeat
  end
end
