class AddLocationToMules < ActiveRecord::Migration[6.0]
  def change
    add_column :mules, :location, :string
  end
end
