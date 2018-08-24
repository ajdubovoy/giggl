class Gig < ApplicationRecord
  belongs_to :genre
  belongs_to :organizer, polymorphic: true
  has_many :bands, through: :bookings
  has_many :photos, as: :profile
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
