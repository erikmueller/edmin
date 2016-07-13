defmodule Edmin.SlidegroupView do
  use Edmin.Web, :view
  import Edmin.Utils, only: [is_valid_video?: 1]

  def get_type file_name do
    file_name
    |> Path.extname
    |> String.slice(1, 3)
  end

  def get_duration slides do
    slides
    |> Enum.reduce([], fn (slide, acc) -> [slide.duration | acc] end)
    |> Enum.reverse
    |> Poison.encode!
  end
end
