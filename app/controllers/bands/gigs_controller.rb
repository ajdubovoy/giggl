class Bands::GigsController < ApplicationController
  before_action :find_band

  def new # Will auto-populate from band
    @gig = Gig.new(organizer: @band)
    @genres = Genre.all.sort_by { |genre| genre.name }
  end

  def create
    @gig = Gig.new(gig_params)
    @gig.genre = genre
    @gig.organizer = @band # will be the band
    @gig.address = @band.address # Sets address automatically to that of the band

    save_with_error @gig
  end

  private

  def find_band
    band_params = params.require(:band).permit(:id)
    @band = Band.find(band_params[:id])
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
