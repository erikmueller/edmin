defmodule Edmin.ScreenControllerTest do
  use Edmin.ConnCase

  alias Edmin.Screen
  @valid_attrs %{description: "some content"}
  @invalid_attrs %{}

  test "shows chosen resource", %{conn: conn} do
    screen = Repo.insert! %Screen{}
    conn = get conn, screen_path(conn, :show, screen)
    assert html_response(conn, 200) =~ "Show screen"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, screen_path(conn, :show, -1)
    end
  end
end
