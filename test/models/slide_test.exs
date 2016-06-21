defmodule Edmin.SlideTest do
  use Edmin.ModelCase

  alias Edmin.Slide

  @valid_attrs %{asset_path: "some content", description: "some content", duration: 42, name: "some content"}
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
