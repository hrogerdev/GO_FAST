class Mule < ApplicationRecord
  belongs_to :user
  has_many :offers

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :rate_per_km_per_kg, presence: true
  has_one_attached :photo
end
