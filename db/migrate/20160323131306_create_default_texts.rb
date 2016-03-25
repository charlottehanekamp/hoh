class CreateDefaultTexts < ActiveRecord::Migration
  def change
    create_table :default_texts do |t|
      t.string :title
      t.text :content_one
      t.text :content_two
      t.text :content_three
      t.text :content_four
      t.integer :page
      t.string :image
      t.timestamps null: false
    end
  end
end
