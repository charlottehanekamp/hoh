ActiveAdmin.register Gallery do
  # permit_params picture_ids: []
  permit_params :title, :location, :date_at, :pictures_attributes => [:id, :image, :gallery_id]
  menu parent: "Photoalbum"

  index do
    selectable_column
    column :title
    column :location
    column :date_at
    actions
  end

  form do |f|
    f.inputs "Gallery Details" do
      f.input :title
      f.input :location
      f.input :date_at
    end
    f.inputs 'Pictures' do
      f.has_many :pictures, headings: true, allow_destroy: true do |ff|
        ff.input :image
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :location
      row :date_at
    end
    panel 'Pictures' do
      table_for gallery.pictures do
        column :id
        column :gallery_id
        column 'images' do |i|
          link_to image_tag(i.image.normal.url), i.image.url
          # image_tag(i.image.normal.url)
        end
      end
    end
  end

end
