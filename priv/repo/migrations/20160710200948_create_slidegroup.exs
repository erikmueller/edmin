defmodule Edmin.Repo.Migrations.CreateSlidegroup do
  use Ecto.Migration

  def change do
    create table(:slidegroups) do
      add :description, :string

      timestamps
    end

  end
end
