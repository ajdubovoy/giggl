class Venues::GigsController < ApplicationController
  before_action :find_venue

  def new # Will auto-populate from venue
    @gig = Gig.new(organizer: @venue)
    @genres = Genre.all.sort_by { |genre| genre.name }
  end

  def create
    @gig = Gig.new(gig_params)
    @gig.genre = genre
    @gig.organizer = @venue # will be the venue
    @gig.address = @venue.address # Sets address automatically to that of the venue

    save_with_error @gig
  end

  private

  def find_venue
    @venue = Venue.find(params[:venue_id])
  end

  def gig_params
    params.require(:gig).permit(:date, :time, :address, :paid, :other_bands, :url, :name, :genre_id, :organizer_id, :organizer_type)
  end

  def genre
    # finds genre from params
    Genre.find(gig_params[:genre_id])
  end

  def save_with_error(gig)
    if gig.save
      redirect_to gig_path(gig)
    else
      render :new
    end
  end
end
