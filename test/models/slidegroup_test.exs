defmodule Edmin.SlidegroupTest do
  use Edmin.ModelCase

  alias Edmin.Slidegroup

  @valid_attrs %{description: "some desc"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Slidegroup.changeset(%Slidegroup{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Slidegroup.changeset(%Slidegroup{}, @invalid_attrs)
    refute changeset.valid?
  end
end
