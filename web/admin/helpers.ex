defmodule Edmin.ExAdmin.Helpers do
  use Xain
  import Edmin.Utils, only: [is_valid_video?: 1]

  def asset %{asset_file_name: file_name}, height \\ 50 do
    if is_valid_video? file_name do
      video height: height do
        source(src: "/videos/#{file_name}")
      end
    else
      img(src: "/images/#{file_name}", height: height)
    end
  end
end
