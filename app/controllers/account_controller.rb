class AccountController < ApplicationController
  def index
    @bands = current_user.bands
    @venues = current_user.venues
    @bookings = current_user.bookings # Based on custom method combining bookings of all [bands and venues] for user
    @gigs = current_user.gigs # Based on custom method combining gigs of all [bands and venues] for user
    # N.B. "Listings" and "Gigs" are essentially interchangeable words. Here, I have opted for gigs and @gigs to be in keeping with our database. But the @gigs variable may be used for our "My Listings" tab.

    # TODO: Messages
  end
end
