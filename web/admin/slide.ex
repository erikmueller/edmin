defmodule Edmin.ExAdmin.Slide do
  use ExAdmin.Register

  register_resource Edmin.Slide do
    menu priority: 2

    index do
      column "Slide", fn(s) -> a " ##{s.id}", href: "/admin/slides/#{s.id}" end
      column :name
      column :description
      column :duration
      column "Asset", &(img(src: Edmin.Asset.url({&1.asset_file_name, &1}), height: 100))
    end

    show _slide do
      attributes_table do
        row :name
        row :description
        row :duration
        row "Asset", &(img(src: Edmin.Asset.url({&1.asset_file_name, &1}), height: 250))
      end
    end

    form slide do
      inputs do
        input slide, :name
        input slide, :description
        input slide, :duration
        input slide, :asset_file_name, type: :file
      end
    end
  end
end
