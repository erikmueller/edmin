defmodule Edmin.ExAdmin.Slidegroup do
  use ExAdmin.Register
  alias Edmin.ExAdmin.Helpers

  register_resource Edmin.Slidegroup do
    menu priority: 3

    index do
      column "Group", fn(g) -> a " ##{g.id}", href: "/admin/slidegroups/#{g.id}" end
      column :description
    end

    show group do
      attributes_table

      panel "Assigned slides" do
        sortable_table_for(group, :slide) do
          sort_handle_column
          column "Slide", fn(s) -> a " ##{s.id}", href: "/admin/slides/#{s.id}" end
          column :name, height: 50
          column :description
          column :duration
          column "Asset", &(Helpers.asset &1.asset_file_name)
        end
      end
    end

    query do
      %{
        show: [
          preload: [slide: from(Edmin.Slide, order_by: [:position])]
        ]
      }
    end
  end
end
