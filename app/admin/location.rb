ActiveAdmin.register Location do
  permit_params :name, :content_one, :content_two, :image, :url, :orderOnPage

  index do
    selectable_column
    column :name
    column :content_one
    column :content_two
    column :image
    column :url
    column :orderOnPage
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :content_one
      f.input :content_two
      f.input :image
      f.input :url
      f.input :orderOnPage
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :content_one
      row :content_two
      row :image
      row :url
      row :orderOnPage
    end
  end

end
