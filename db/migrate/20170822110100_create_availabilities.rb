class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.integer :weekday
      t.time :open_time
      t.time :closing_time
      t.references :hairdresser, foreign_key: true
      t.timestamps
    end
  end
end
