defmodule Edmin.Slidegroup do
  use Edmin.Web, :model

  schema "slidegroups" do
    field :description, :string
    has_many :slide, Edmin.Slide

    timestamps
  end

  @required_fields ~w(description)
  @optional_fields ~w()

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
