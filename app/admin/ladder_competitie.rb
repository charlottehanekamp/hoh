ActiveAdmin.register LadderCompetitie do
  permit_params :one, :two, :three, :four, :five, :user_id, :shot_against_id, :shot_at, :arrows_hit

  index do
    selectable_column
    column :user
    column :shot_against
    column :one
    column :two
    column :three
    column :four
    column :five
    column :arrows_shot
    column :arrows_hit
    column :total_without_bonus
    column :bonus
    column :total
    column :shot_at
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :user
      f.input :shot_against
      f.input :one
      f.input :two
      f.input :three
      f.input :four
      f.input :five
      f.input :arrows_shot
      f.input :shot_at
    end
    f.actions
  end

  show do
    attributes_table do
      row :user
      row :shot_against
      row :one
      row :two
      row :three
      row :four
      row :five
      row :arrows_shot
      row :arrows_hit
      row :bonus
      row :total_without_bonus
      row :total
      row :shot_at
    end
  end

end
