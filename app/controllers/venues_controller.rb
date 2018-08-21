class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venues = Venue.find(params[:id])
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
end
