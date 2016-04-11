ActiveAdmin.register Rate do
  permit_params :title, :description, :price, :expires_in

  index do
    selectable_column
    column :title
    # column :description
    column :price
    column :expires_in
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :description
      f.input :price
      f.input :expires_in
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :price
      row :expires_in
    end
  end

end
