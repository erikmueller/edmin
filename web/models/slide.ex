defmodule Edmin.Slide do
  use Edmin.Web, :model
  use Arc.Ecto.Model

  schema "slide" do
    field :position, :integer
    field :name, :string
    field :description, :string
    field :duration, :integer
    field :asset_file_name, :string

    timestamps
  end

  @required_fields ~w(position name description duration)
  @optional_fields ~w(asset_file_name)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> cast_attachments(params, [:asset_file_name], [])
  end
end
