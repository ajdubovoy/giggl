class Band < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :reviews
  has_many :photos
  has_many :bookings
  has_many :gigs

  def bookings_played # just to clarify
    self.bookings
  end

  def bookings_organized
    gigs = band.gigs
    bookings_map = gigs.map { |gig| gig.bookings } # will return array of arrays
    return bookings_map.flatten
  end

  def bookings_all
    bookings_played + bookings_organized
  end
end