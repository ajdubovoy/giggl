class GigsController < ApplicationController
  def index
    @gigs = Gig.all
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def new
    @gig = Gig.new(gig_params)
    @gig = genre
  end

  def create
    @gig = Gig.new(gig_params)
    @gig.genre = genre
    @gig.organizer = organizer # can be band or venue

    save_with_error @gig
  end

  private

  def organizer
    # finds organizer despite polymorphism
    if params[:band].present?
      id = params[:band][:id]
      return Band.find(id)
    elsif params[:venue].present?
      id = params[:venue][:id]
      return Venue.find(id)
    end
  end

  def gig_params
    params.require(:gig).permit(:datetime, :address, :paid, :other_bands, :url, :name, :genre_id)
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
