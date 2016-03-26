ActiveAdmin.register DefaultText do
  permit_params :title, :content_one, :content_two, :content_three, :content_four, :page, :image
  menu parent: "Extra"
  # menu priority: 10

  index do
    selectable_column
    column :title
    column :content_one
    column :content_two
    column :content_three
    column :content_four
    column :page
    column :image
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :content_one
      f.input :content_two
      f.input :content_three
      f.input :content_four
      f.input :page, as: :select, collection: DefaultText.pages.keys
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :content_one
      row :content_two
      row :content_three
      row :content_four
      row :page
      row :image
    end
  end

end
