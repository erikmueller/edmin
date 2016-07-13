defmodule Edmin.ExAdmin.Helpers do
  use Xain
  import Edmin.Utils, only: [is_valid_video?: 1]

  def asset %{file_name: file_name}, height \\ 50 do
    if is_valid_video? file_name do
      video height: height do
        source(src: "/uploads/#{file_name}")
      end
    else
      img(src: "/uploads/#{file_name}", height: height)
    end
  end
end
