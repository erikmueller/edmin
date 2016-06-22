defmodule Edmin.SlideTest do
  use Edmin.ModelCase

  alias Edmin.Slide

  @valid_attrs %{description: "some desc", duration: 42, name: "some name"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Slide.changeset(%Slide{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Slide.changeset(%Slide{}, @invalid_attrs)
    refute changeset.valid?
  end
end
