class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_messageable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bands
  has_many :venues

  def bookings
    return venue_bookings + band_bookings
  end

  def gigs
    return venue_gigs + band_gigs
  end

  private

  def band_bookings # Bookings where band is the player OR the organizer
    bands = self.bands
    bookings_map = bands.map { |band| band.bookings_all } # incorporates bookings where the band is the organizer and the player
    return bookings_map.flatten
  end

  def venue_bookings # Bookings where venue is the organizer
    venues = self.venues
    bookings_map = venues.map { |venue| venue.bookings }
    return bookings_map.flatten
  end

  def band_gigs # Gigs where band is the organizer
    bands = self.bands
    gigs_map = bands.map { |band| band.gigs }
    return gigs_map.flatten
  end

  def venue_gigs # Gigs where venue is the organizer
    venues = self.venues
    gigs_map = venues.map { |venue| venue.gigs }
    return bookings_map.flatten
  end

  def mailboxer_email(object)
    email
  end
end
