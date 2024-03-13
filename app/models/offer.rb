class Offer < ApplicationRecord
  CATEGORY = ["Sport extrême", "Cusine", "Natation"]
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :title, :start_from, :price_per_participant, :photo_url, :duration, :category, :address, :capacity, presence: true
  validates :description, length: { minimum: 10 }
end
