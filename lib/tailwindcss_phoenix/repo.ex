defmodule TailwindcssPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :tailwindcss_phoenix,
    adapter: Ecto.Adapters.Postgres
end
