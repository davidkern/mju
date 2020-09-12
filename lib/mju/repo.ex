defmodule MJU.Repo do
  use Ecto.Repo,
    otp_app: :mju,
    adapter: Ecto.Adapters.Postgres
end
