class DefaultAverageRanking < ActiveRecord::Migration
  def change
    remove_column :ladder_rankings, :average
    add_column :ladder_rankings, :average, :decimal, precision: 6, scale: 2, default: 0.00
  end
end
