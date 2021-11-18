class AddCoordinatesToMules < ActiveRecord::Migration[6.0]
  def change
    add_column :mules, :latitude, :float
    add_column :mules, :longitude, :float
  end
end
