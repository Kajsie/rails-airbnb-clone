class ChangeTimeInBookings < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :end_time, :time
  end
end
