class CreateLadderCompetities < ActiveRecord::Migration
  def change
    create_table :ladder_competities do |t|
      t.integer :user_id, index: true
      t.integer :shot_against_id, index: true
      t.integer :five, default: 0
      t.integer :four, default: 0
      t.integer :three, default: 0
      t.integer :two, default: 0
      t.integer :one, default: 0
      t.integer :miss, default: 0
      t.integer :total, default: 0
      t.date :shot_at
      t.timestamps null: false
    end
  end
end
