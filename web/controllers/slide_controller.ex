defmodule Edmin.SlideController do
  use Edmin.Web, :controller

  alias Edmin.Slide

  def index(conn, _params) do
    query = from s in Slide,
      select: %{id: s.id, duration: s.duration, asset: s.asset_file_name},
      order_by: s.position,
      limit: 15

    slides = Repo.all(query)

    render(conn, :index, slides: slides)
  end
end
