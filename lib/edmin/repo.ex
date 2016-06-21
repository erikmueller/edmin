defmodule Edmin.Repo do
  use Ecto.Repo, otp_app: :edmin
  use Scrivener, page_size: 10
end
