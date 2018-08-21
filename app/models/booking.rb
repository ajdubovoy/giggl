class Booking < ApplicationRecord
  belongs_to :gig
  belongs_to :band
end
