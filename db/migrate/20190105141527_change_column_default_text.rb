class ChangeColumnDefaultText < ActiveRecord::Migration
  def change
       rename_column :default_texts, :order, :orderOnPage
  end
end
