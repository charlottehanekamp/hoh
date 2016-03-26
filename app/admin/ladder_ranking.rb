ActiveAdmin.register LadderRanking do
  permit_params :user_id, :rank, :average
  menu parent: "Ladder"
  index do
    selectable_column
    column :user
    column :rank
    column :average
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :user
      f.input :rank
    end
    f.actions
  end

  show do
    attributes_table do
      row :user
      row :rank
      row :average
    end
  end

end
