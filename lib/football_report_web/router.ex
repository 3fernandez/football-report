defmodule FootballReportWeb.Router do
  use FootballReportWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FootballReportWeb do
    pipe_through :api
  end
end
