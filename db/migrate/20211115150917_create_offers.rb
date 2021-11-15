class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :mule, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :destination
      t.integer :weight
      t.string :drug_type
      t.integer :commission
      t.string :starting_point
      t.integer :distance
      t.string :status

      t.timestamps
    end
  end
end
