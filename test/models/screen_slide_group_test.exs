defmodule Edmin.ScreenSlideGroupTest do
  use Edmin.ModelCase

  alias Edmin.ScreenSlideGroup

  @valid_attrs %{description: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = ScreenSlideGroup.changeset(%ScreenSlideGroup{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = ScreenSlideGroup.changeset(%ScreenSlideGroup{}, @invalid_attrs)
    refute changeset.valid?
  end
end
