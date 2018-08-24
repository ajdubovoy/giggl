class SearchController < ApplicationController
  def index
    @gigs = Gig.all
    @bands = Band.where(user: current_user)

    # Location filter
    if params[:location].present?
      @gigs = Gig.near(params[:location])
    end
  end
end
