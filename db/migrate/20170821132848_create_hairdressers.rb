class CreateHairdressers < ActiveRecord::Migration[5.0]
  def change
    create_table :hairdressers do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
