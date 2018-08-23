class SearchController < ApplicationController
  def index
    @gigs = Gig.all

    # Location filter
    if params[:location].present?
      @gigs = Gig.near(params[:location]
    end
  end
end
