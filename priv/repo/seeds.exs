# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Repo.insert!(%Edmin.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

asset = fn (fname) ->
  %{
    file_name: fname,
    updated_at: Ecto.DateTime.cast!("2016-03-17T00:05:01Z"),
    inserted_at: Ecto.DateTime.cast!("2016-03-17T00:05:01Z")
  }
end

alias Edmin.Repo

Repo.delete_all Edmin.Slide
Repo.delete_all Edmin.Slidegroup

group = Repo.insert!(%Edmin.Slidegroup{
  description: "One and only slidegroup"
})

Repo.insert!(%Edmin.Slide{
  position: 10,
  name: "image_1",
  description: "desc 1",
  duration: 4000,
  slidegroup_id: group.id,
  asset_file_name: asset.("test2.jpg")
})

Repo.insert!(%Edmin.Slide{
  position: 20,
  name: "image_2",
  description: "desc 2",
  duration: 6000,
  slidegroup_id: group.id,
  asset_file_name: asset.("test3.jpg")
})

Repo.insert!(%Edmin.Slide{
  position: 30,
  name: "vid_1",
  description: "desc 1",
  duration: 0,
  slidegroup_id: group.id,
  asset_file_name: asset.("test2.mp4")
})
