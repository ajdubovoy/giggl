class Venue < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :photos
  has_many :bookings
  has_many :gigs
end
