ActiveAdmin.register AccessKey do
  permit_params :access_token, :expires_after, :expires_at, :user_id
  menu parent: "User"
  index do
    selectable_column
    id_column
    column :user
    column :access_token
    column :expires_after
    column :expires_at
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :access_token
      f.input :expires_after
      f.input :expires_at
      f.input :user
    end
    f.actions
  end

  show do
    attributes_table do
      row :user
      row :access_token
      row :expires_after
      row :expires_at
    end
  end

end
