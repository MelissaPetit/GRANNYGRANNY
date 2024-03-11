class Offer < ApplicationRecord
  CATEGORY = ["Sport extrême", "Cusine", "Natation"]

  belongs_to :user
end
