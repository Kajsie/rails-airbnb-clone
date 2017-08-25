class AddColumnToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :hairdresser, foreign_key: true
  end
end
