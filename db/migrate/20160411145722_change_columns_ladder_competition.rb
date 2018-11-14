class ChangeColumnsLadderCompetition < ActiveRecord::Migration
  def change
    rename_column :ladder_competities, :five, :u_five
    rename_column :ladder_competities, :four, :u_four
    rename_column :ladder_competities, :three, :u_three
    rename_column :ladder_competities, :two, :u_two
    rename_column :ladder_competities, :one, :u_one
    rename_column :ladder_competities, :total_without_bonus, :u_total_without_bonus
    rename_column :ladder_competities, :total, :u_total
    rename_column :ladder_competities, :arrows_shot, :u_arrows_shot
    rename_column :ladder_competities, :arrows_hit, :u_arrows_hit
    rename_column :ladder_competities, :bonus, :u_bonus

    add_column :ladder_competities, :sa_five, :integer, default: 0
    add_column :ladder_competities, :sa_four, :integer, default: 0
    add_column :ladder_competities, :sa_three, :integer, default: 0
    add_column :ladder_competities, :sa_two, :integer, default: 0
    add_column :ladder_competities, :sa_one, :integer, default: 0
    add_column :ladder_competities, :sa_total_without_bonus, :integer, default: 0
    add_column :ladder_competities, :sa_total, :integer, default: 0
    add_column :ladder_competities, :sa_arrows_shot, :integer, default: 0
    add_column :ladder_competities, :sa_arrows_hit, :integer, default: 0
    add_column :ladder_competities, :sa_bonus, :integer, default: 0
  end
end
