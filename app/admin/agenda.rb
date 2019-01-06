ActiveAdmin.register Agenda do
  permit_params :title, :content, :end_at, :start_at, :location_id

  index do
    selectable_column
    column :title
    column :location
    column :content
    column :start_at
    column :end_at
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :location
      f.input :content
      f.input :start_at
      f.input :end_at
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :location
      row :content
      row :start_at
      row :end_at
    end
  end

end
