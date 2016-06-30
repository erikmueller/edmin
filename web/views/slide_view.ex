defmodule Edmin.SlideView do
  use Edmin.Web, :view

  def is_valid_video? file_name do
    ~w(.mp4 .webm) |> Enum.member?(Path.extname(file_name))
  end

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
