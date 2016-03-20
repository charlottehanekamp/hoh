class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.text :content
      t.string :title
      
      t.timestamps null: false
    end
  end
end
