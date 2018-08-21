class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bands
  has_many :venues

  def bookings    
    return venue_bookings + band_bookings
  end

  private

  def band_bookings
    bands = self.bands
    bookings_map = bands.map { |band| band.bookings_all }
    return bookings.map.flatten
  end

  def venue_bookings
    venues = self.venues
    bookings_map = venues.map { |venue| venue.bookings }
    return bookings_map.flatten
  end
end
