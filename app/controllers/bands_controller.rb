class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @band.user = current_user
    @band.genre = Genre.find(band_params[:genre_id])
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
end
