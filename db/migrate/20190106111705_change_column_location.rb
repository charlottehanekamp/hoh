class ChangeColumnLocation < ActiveRecord::Migration
  def change
       add_column :locations, :orderOnPage, :integer
       add_column :locations, :image, :string
       add_column :locations, :url, :string
       add_column :locations, :content_two, :text
       rename_column :locations, :content, :content_one
  end
end
