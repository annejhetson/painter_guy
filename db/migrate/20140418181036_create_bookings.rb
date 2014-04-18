class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :comment
      t.date :date
      t.integer :user_id
      t.timestamps
    end
  end
end
