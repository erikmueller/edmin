defmodule Edmin.Slide do
  use Edmin.Web, :model

  schema "slides" do
    field :name, :string
    field :description, :string
    field :duration, :integer
    field :asset_file_name, Edmin.Asset.Type

    timestamps
  end

  @required_fields ~w(name description duration)
  @optional_fields ~w(asset_file_name)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
