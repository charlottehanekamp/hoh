class AddFunctieToUsers < ActiveRecord::Migration
  def change
    add_column :users, :functie, :integer
  end
end
