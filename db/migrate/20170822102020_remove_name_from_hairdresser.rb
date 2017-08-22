class RemoveNameFromHairdresser < ActiveRecord::Migration[5.0]
  def change
    remove_column :hairdressers, :name, :string
  end
end
