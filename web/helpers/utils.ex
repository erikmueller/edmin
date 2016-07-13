defmodule Edmin.Utils do
  def is_valid_video? file_name do
    ~w(.mp4 .webm) |> Enum.member?(Path.extname(file_name))
  end
end
