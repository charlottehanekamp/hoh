class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :access_keys do |t|
      t.string :access_token
      t.datetime :expires_at
      t.integer :expires_after
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :access_keys, :users
  end
end
