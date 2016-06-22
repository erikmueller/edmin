defmodule Edmin.ScreenTest do
  use Edmin.ModelCase

  alias Edmin.Screen

  @valid_attrs %{description: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Screen.changeset(%Screen{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Screen.changeset(%Screen{}, @invalid_attrs)
    refute changeset.valid?
  end
end
