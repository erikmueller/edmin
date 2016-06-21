defmodule Edmin.SlideController do
  use Edmin.Web, :controller

  alias Edmin.Slide

  plug :scrub_params, "slide" when action in [:create, :update]

  def index(conn, _params) do
    slides = Repo.all(Slide)
    render conn, "index.html", slides: slides
  end

  # def new(conn, _params) do
  #   changeset = Slide.changeset(%Slide{})
  #   render(conn, "new.html", changeset: changeset)
  # end
  #
  # def create(conn, %{"slide" => slide_params}) do
  #   changeset = Slide.changeset(%Slide{}, slide_params)
  #
  #   case Repo.insert(changeset) do
  #     {:ok, _product} ->
  #       conn
  #       |> put_flash(:info, "Slide created successfully.")
  #       # |> redirect(to: slide_path(conn, :index))
  #     {:error, changeset} ->
  #       render(conn, "new.html", changeset: changeset)
  #   end
  # end
  #
  # def show(conn, %{"id" => id}) do
  #   slide = Repo.get(Slide, id)
  #   render conn, "show.html", slide: slide
  # end
end
