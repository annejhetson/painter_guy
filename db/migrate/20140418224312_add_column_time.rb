class AddColumnTime < ActiveRecord::Migration
  def change
    add_column :bookings, :time, :timestamp
  end
end
