class BandsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  
  def index
    @bands = Band.all
    generate_map(@bands)
  end

  def show
    @band = Band.find(params[:id])
    @gigs = @band.gigs
    @reviews = @band.reviews
  end

  def new
    @band = Band.new
    @genres = Genre.all.sort_by { |genre| genre.name }
  end

  def create
    @band = Band.new(band_params)
    @band.user = current_user
    @band.genre = Genre.find(band_params[:genre_id]) if  band_params[:genre_id].present?
    if @band.save
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  private

  def band_params
    params.require(:band).permit(:bio, :website, :soundcloud, :spotify, :bandcamp, :facebook, :instagram, :twitter, :youtube, :vimeo, :name, :genre_id)
  end

  def generate_map(bands)
    bands.map do |band|
      {
        lat: band.latitude,
        lng: band.longitude#,
        # infoWindow: { content: render_to_string(partial: "/bands/map_box", locals: { band: band }) }
      }
    end
  end
end
