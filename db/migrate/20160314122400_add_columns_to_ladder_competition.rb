class AddColumnsToLadderCompetition < ActiveRecord::Migration
  def change
    add_column :ladder_competities, :arrows_shot, :integer, default: 0
    add_column :ladder_competities, :arrows_hit, :integer, default: 0
    add_column :ladder_competities, :bonus, :integer, default: 0
  end
end
