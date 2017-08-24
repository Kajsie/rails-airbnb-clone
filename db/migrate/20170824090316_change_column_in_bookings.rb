class ChangeColumnInBookings < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :start_time, :time
  end
end
