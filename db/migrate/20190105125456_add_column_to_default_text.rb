class AddColumnToDefaultText < ActiveRecord::Migration
  def change
       add_column :default_texts, :order, :integer

  end
end
