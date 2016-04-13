ActiveAdmin.register LadderCompetitie do
  permit_params :u_one, :u_two, :u_three, :u_four, :u_five, :u_arrows_hit, :user_id, :shot_against_id, :shot_at,
                :sa_one, :sa_two, :sa_three, :sa_four, :sa_five, :sa_arrows_hit
  menu parent: "Ladder"
  index do
    selectable_column
    column :user
    column :u_total_without_bonus
    column :u_bonus
    column :u_total

    column :shot_against
    column :sa_total_without_bonus
    column :sa_bonus
    column :sa_total

    column :shot_at
    actions
  end

  form do |f|
    f.inputs "Competite Details" do
      f.input :user
      f.input :shot_against
      f.input :shot_at
    end

    f.inputs "Uitdager Details" do
      f.input :u_one
      f.input :u_two
      f.input :u_three
      f.input :u_four
      f.input :u_five
      f.input :u_arrows_hit
    end
    
    f.inputs "Uitgedaagde Details" do
      f.input :sa_one
      f.input :sa_two
      f.input :sa_three
      f.input :sa_four
      f.input :sa_five
      f.input :sa_arrows_hit
    end

    f.actions

  end

  show do
    attributes_table do
      row :user
      row :u_one
      row :u_two
      row :u_three
      row :u_four
      row :u_five
      row :u_arrows_shot
      row :u_arrows_hit
      row :u_bonus
      row :u_total_without_bonus
      row :u_total
      row :shot_against
      row :sa_one
      row :sa_two
      row :sa_three
      row :sa_four
      row :sa_five
      row :sa_arrows_shot
      row :sa_arrows_hit
      row :sa_bonus
      row :sa_total_without_bonus
      row :sa_total

      row :shot_at
    end
  end

end
