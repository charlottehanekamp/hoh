class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :location
      t.date :date_at
      t.timestamps null: false
    end
  end
end
