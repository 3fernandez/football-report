defmodule FootballReport.Repo do
  use Ecto.Repo,
    otp_app: :football_report,
    adapter: Ecto.Adapters.Postgres
end
