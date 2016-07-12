defmodule Edmin.Repo.Migrations.CreateSlidegroup do
  use Ecto.Migration

  def change do
    create table(:slidegroup) do
      add :description, :string

      timestamps
    end

  end
end
