class CreateMules < ActiveRecord::Migration[6.0]
  def change
    create_table :mules do |t|
      t.references :user, null: false, foreign_key: true
      t.string :transportation_means
      t.text :description
      t.integer :rate_per_km_per_kg

      t.timestamps
    end
  end
end
