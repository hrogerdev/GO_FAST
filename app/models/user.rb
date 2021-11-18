class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_commit :rebuild

  include PgSearch::Model
  multisearchable against: [:username]

  has_many :mules
  has_many :offers
  has_many :jobs, through: :mules, source: :offers

  has_one_attached :photo


  private

  def rebuild
    PgSearch::Multisearch.rebuild(User)
  end
end
