class AddColumnToAgenda < ActiveRecord::Migration
  def change
       add_column :agendas, :location_id, :integer
  end
end
