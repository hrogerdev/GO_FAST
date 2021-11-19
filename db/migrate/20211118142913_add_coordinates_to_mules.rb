class AddCoordinatesToMules < ActiveRecord::Migration[6.0]
  def change
    add_column :mules, :latitude, :float
    add_column :mules, :longitude, :float
    Mule.all.each do |mule|
      mule.geocode
      mule.save
    end
  end
end
