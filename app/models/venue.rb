class Venue < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :photos
  has_many :bookings
  has_many :gigs
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
