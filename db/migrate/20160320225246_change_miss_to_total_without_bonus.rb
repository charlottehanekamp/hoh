class ChangeMissToTotalWithoutBonus < ActiveRecord::Migration
  def change
    rename_column :ladder_competities, :miss, :total_without_bonus
  end
end
