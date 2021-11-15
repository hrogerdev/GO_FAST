class ChangeStatusDefaultForOffers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :offers, :status, "pending"
  end
end
