class Offer < ApplicationRecord
  belongs_to :mule
  belongs_to :user

  validates :destination, :weight, :drug_type, :starting_point, :distance, presence: true
  validates :weight, numericality: {only_integer: true}

end
