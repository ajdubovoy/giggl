class SearchController < ApplicationController
  def index
    @all = Gig.all + Venue.all + Band.all

    # Location filter
    if params[:location].present?
      @all = Gig.near(params[:location], 200) + Venue.near(params[:location], 200) + Band.near(params[:location], 200)
    end
  end
end
