class Venue < ApplicationRecord
  acts_as_messageable
  belongs_to :user
  has_many :reviews, as: :receiver
  has_many :photos, as: :profile
  has_many :gigs, as: :organizer
  has_many :bookings, through: :gigs
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def mailboxer_email(object)
    email
  end
end
