defmodule Edmin.ExAdmin.Slide do
  use ExAdmin.Register
  alias Edmin.Slidegroup
  alias Edmin.Repo
  alias Edmin.ExAdmin.Helpers

  register_resource Edmin.Slide do
    menu priority: 2

    index do
      column "Slide", fn(s) -> a " ##{s.id}", href: "/admin/slides/#{s.id}" end
      column :name
      column :description
      column :duration
      column :slidegroup
      column "Asset", &(Helpers.asset &1.asset_file_name)
    end

    show _slide do
      attributes_table do
        row :name
        row :description
        row :duration
        row :slidegroup
        row "Asset", &(Helpers.asset &1.asset_file_name, 250)
      end
    end

    form slide do
      inputs do
        input slide, :name
        input slide, :description
        input slide, :duration
        input slide, :slidegroup, collection: Repo.all(Slidegroup)
        input slide, :asset_file_name, type: :file
      end
    end
  end
end
