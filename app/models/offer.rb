class Offer < ApplicationRecord
  belongs_to :mule
  belongs_to :user

  geocoded_by :starting_point, :destination

  validates :destination, :weight, :drug_type, :starting_point, :distance, presence: true
  validates :weight, numericality: { only_integer: true }

  after_validation :geocode, if: :will_save_change_to_address?
end
