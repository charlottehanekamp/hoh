class AddCollumnToDefaultTexts < ActiveRecord::Migration
  def change
       add_column :default_texts, :subtitle, :string
  end
end
