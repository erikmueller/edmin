defmodule Edmin.Repo.Migrations.CreateSlide do
  use Ecto.Migration

  def change do
    create table(:slide) do
      add :position, :integer
      add :name, :string
      add :description, :string
      add :duration, :integer
      add :asset_file_name, :string
      add :slidegroup_id, :integer

      timestamps
    end

  end
end
