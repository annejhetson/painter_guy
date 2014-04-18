class AddColumnName < ActiveRecord::Migration
  def change
    add_column :bookings, :name, :string
  end
end
