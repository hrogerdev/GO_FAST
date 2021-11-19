class Mule < ApplicationRecord
  belongs_to :user
  has_many :offers
  after_commit :rebuild

  include PgSearch::Model
  multisearchable against: %i[description rate_per_km_per_kg location]

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :rate_per_km_per_kg, presence: true
  has_one_attached :photo

  private

  def rebuild
    PgSearch::Multisearch.rebuild(Mule)
  end
end
