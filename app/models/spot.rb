class Spot < ApplicationRecord
  belongs_to :parking_area
  has_many :reservations
end

