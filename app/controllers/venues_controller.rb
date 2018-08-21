class VenuesController < ApplicationController
  def index 
    @venues = Venue.all
  end 

  def show
    @venue = Venue.find(params[:id])
  end 

  def new 
    @venue = Venue.new
    @venue.user = current_user 
  end 

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    @venue.save
    redirect_to venue_path(@venue)
  end 

  def venue_params
    params.require(:venue).permit(:name, :telephone, :description)
  end
end
