class CreateLadderRankings < ActiveRecord::Migration
  def change
    create_table :ladder_rankings do |t|
      t.belongs_to :user, index: true
      t.integer :rank
      t.decimal :average, precision: 6, scale: 2
      t.timestamps null: false
    end
  end
end
