class Mule < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :rate_per_km_per_kg, presence: true
  has_one_attached :photo
end
