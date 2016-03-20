class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.date :date
      t.text :body
      t.string :title
      t.integer :type
      t.string :image
      t.timestamps null: false
    end
  end
end
