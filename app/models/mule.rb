class Mule < ApplicationRecord
  belongs_to :user
  has_many :offers
  after_commit :rebuild

  include PgSearch::Model
  multisearchable against: %i[description rate_per_km_per_kg location]

  validates :rate_per_km_per_kg, presence: true
  has_one_attached :photo

  private

  def rebuild
    PgSearch::Multisearch.rebuild(Mule)
  end
end
