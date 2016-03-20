ActiveAdmin.register User do
  permit_params :email, :first_name, :last_name, :address, :tel_nr, :hand, :birth_date, :address, :postal_code, :city, :member_since, :nhb_number, :weight, :height, :avatar, :content, :user_type, :functie, :password, :password_confirmation

  filter :email
  filter :hand
  filter :nhb_number

  controller do
    def update
      if params[:user][:password].blank?
        params[:user].delete('password')
        params[:user].delete('password_confirmation')
      end
      super
    end
  end

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :hand
    column :nhb_number
    column :user_type
    column :functie
    column :avatar do |a|
      link_to image_tag(a.avatar.thumb.url), a.avatar.url
    end
    actions
  end

  form do |f|
    f.semantic_errors
    f.inputs "Admin Details" do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :birth_date, start_year: Time.now.year-60, end_year: Time.now.year-12
      f.input :address
      f.input :postal_code
      f.input :city
      f.input :tel_nr
      f.input :nhb_number
      f.input :member_since, start_year: 2000, end_year: Time.now.year
      f.input :hand, as: :select, collection: User.hands.keys
      f.input :user_type, as: :select, collection: User.user_types.keys
      f.input :functie, as: :select, collection: User.functies.keys
      f.input :weight
      f.input :height
      f.input :avatar
      f.input :content
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :email
      row :first_name
      row :last_name
      row :address
      row :tel_nr
      row :hand
      row :birth_date
      row :address
      row :postal_code
      row :city
      row :member_since
      row :nhb_number
      row :weight
      row :height
      row :content
      row :user_type
      row :functie
      row :avatar do |a|
        link_to image_tag(a.avatar.thumb.url), a.avatar.url
      end
    end
  end

end
