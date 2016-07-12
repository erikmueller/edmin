defmodule Edmin.ExAdmin.Helpers do
  use Xain

  defp is_valid_video? file_name do
    ~w(.mp4 .webm) |> Enum.member?(Path.extname(file_name))
  end

  def asset %{asset_file_name: file_name} do
    if file_name |> is_valid_video? do
      video height: 50 do
        source(src: "/videos/#{file_name}")
      end
    else
      img(src: "/images/#{file_name}", height: 50)
    end
  end

  def asset %{asset_file_name: file_name}, height do
    if file_name |> is_valid_video? do
      video height: height do
        source(src: "/videos/#{file_name}")
      end
    else
      img(src: "/images/#{file_name}", height: height)
    end
  end
end
