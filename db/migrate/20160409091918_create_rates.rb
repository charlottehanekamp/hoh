class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :title
      t.string :description
      t.decimal :price, :precision => 6, :scale => 2, default: 0.00
      t.integer :expires_in
      t.timestamps null: false
    end
  end
end
