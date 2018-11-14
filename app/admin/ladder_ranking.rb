ActiveAdmin.register LadderRanking do
  permit_params :user_id, :rank, :average
  menu parent: "Ladder"
  index do
    selectable_column
    column :rank
    column :user
    column :average
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :rank
      f.input :user
    end
    f.actions
  end

  show do
    attributes_table do
      row :rank
      row :user
      row :average
    end
  end

end
