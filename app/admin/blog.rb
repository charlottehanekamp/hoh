ActiveAdmin.register Blog do
  permit_params :title, :body, :type, :date, :image

  index do
    selectable_column
    column :title
    column :body
    column :date
    column :type
    column :image
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :body
      f.input :date
      f.input :type, as: :select, collection: User.hands.keys
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :body
      row :date
      row :type
      row :image
    end
  end

end
