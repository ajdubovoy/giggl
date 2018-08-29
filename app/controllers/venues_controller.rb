class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  
  def index
    @venues = Venue.all
    @markers = generate_map(@venues)
  end

  def show
    @venue = Venue.find(params[:id])
    @gigs = @venue.gigs
    @reviews = @venue.reviews
    @markers = generate_map([@venue])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  private
  
  def venue_params
    params.require(:venue).permit(:address, :telephone, :email, :description, :website, :name)
  end

  def generate_map(venues)
    venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude#,
        # infoWindow: { content: render_to_string(partial: "/venues/map_box", locals: { venue: venue }) }
      }
    end
  end
end
