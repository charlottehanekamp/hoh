ActiveAdmin.register Picture do
  permit_params :image, :gallery_id
  menu parent: "Photoalbum"
  index do
    selectable_column
    column :id
    column :image do |a|
      link_to image_tag(a.image.thumb.url), a.image.url
    end
    column :gallery
    actions
  end

  form do |f|
    f.inputs "Picture Details" do
      f.input :image
      f.input :gallery
    end
    f.actions
  end

  show do
    attributes_table do
      row :image
      row :gallery
    end
  end

end
