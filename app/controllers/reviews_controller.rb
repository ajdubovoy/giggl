class ReviewsController < ApplicationController
  private

  def sender
    player = booking.band
    organizer = booking.gig.organizer

    if current_user.bands.include? player
      return player
    else
      return organizer
    end
  end

  def receiver
    player = booking.band
    organizer = booking.gig.organizer

    if current_user.venues.include? organizer || current_user.bands.include? organizer
      return organizer
    else
      return player
    end
  end
end
