class Reservation < ApplicationRecord
  belongs_to :spot_id
  belongs_to :user_id
end
