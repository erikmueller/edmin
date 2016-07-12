defmodule Edmin.SlidegroupControllerTest do
  use Edmin.ConnCase

  alias Edmin.Slidegroup
  alias Edmin.Slide

  test "shows chosen resource", %{conn: conn} do
    slidegroup = Repo.insert! %Slidegroup{}

    Repo.insert! %Slide{
      description: "some desc",
      duration: 42,
      name: "some name",
      asset_file_name: "test.png",
      slidegroup_id: slidegroup.id
    }

    conn = get conn, slidegroup_path(conn, :show, slidegroup.id)
    assert html_response(conn, 200) =~ "window.__DURATIONS__ = [42]"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    conn = get conn, slidegroup_path(conn, :show, -1)
    assert html_response(conn, 404) =~ "Page not found"
  end
end
