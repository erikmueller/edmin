ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Edmin.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Edmin.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Edmin.Repo)

