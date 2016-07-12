defmodule Edmin.SlidegroupController do
  use Edmin.Web, :controller

  alias Edmin.Slide

  def show(conn, %{"id" => id}) do
    query = from s in Slide,
      select: %{id: s.id, duration: s.duration, asset: s.asset_file_name},
      where: s.slidegroup_id == ^id,
      order_by: s.position,
      limit: 15

    case Repo.all(query) do
      [] ->
        conn
        |> put_status(:not_found)
        |> render(Edmin.ErrorView, "404.html")
      slides ->
        conn
        |> assign(:slides, slides)
        |> render(:show)
    end
  end
end
