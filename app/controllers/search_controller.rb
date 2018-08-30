class SearchController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    # Location filter
    if params[:location].present?
      @gigs = Gig.near(params[:location])
      @location = params[:location]
    else
      @gigs = Gig.all
      @location = 'All'
    end

    @markers = generate_map(@gigs)
  end

  private
  
  def generate_map(gigs)
    gigs.map do |gig|
      {
        lat: gig.latitude,
        lng: gig.longitude#,
        # infoWindow: { content: render_to_string(partial: "/gigs/map_box", locals: { gig: gig }) }
      }
    end
  end
end
