# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Edmin.Repo.insert!(%Edmin.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Edmin.Repo.insert!(%Edmin.Slidegroup{
  description: "One and only slidegroup"
})

Edmin.Repo.insert!(%Edmin.Slide{
  position: 10,
  name: "image_1",
  description: "desc 1",
  duration: 4000,
  slidegroup_id: 1,
  asset_file_name: "test2.jpg",
})

Edmin.Repo.insert!(%Edmin.Slide{
  position: 20,
  name: "image_2",
  description: "desc 2",
  duration: 6000,
  slidegroup_id: 1,
  asset_file_name: "test3.jpg"
})

Edmin.Repo.insert!(%Edmin.Slide{
  position: 30,
  name: "vid_1",
  description: "desc 1",
  duration: 0,
  slidegroup_id: 1,
  asset_file_name: "test2.mp4"
})
