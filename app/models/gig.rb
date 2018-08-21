class Gig < ApplicationRecord
  belongs_to :genre
  belongs_to :organizer, polymorphic: true
  has_many :bands, through: :bookings
end
