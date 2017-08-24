class AddStreetToHairdressers < ActiveRecord::Migration[5.0]
  def change
    add_column :hairdressers, :street, :string
  end
end
