class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :participant_number, :date, presence: true
end
