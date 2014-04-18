class ChangeColumnNameDate < ActiveRecord::Migration
  def change
    remove_column :bookings, :date
    add_column :bookings, :start_time, :datetime
  end
end
