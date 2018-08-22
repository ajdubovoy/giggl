class GigsController < ApplicationController
  def index
    @gigs = Gig.all
    @markers = generate_map(@gigs)
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def new
    @organizers = (current_user.gigs + current_user.venues).sort_by { |e| e.name }
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

  def generate_map(gigs)
    gigs.map do |gig|
      {
        lat: gig.latitude,
        lng: gig.longitude#,
        # infoWindow: { content: render_to_string(partial: "/gigs/map_box", locals: { gig: gig }) }
      }
    end
  end

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
    if gig.save && organizer.class == Venue
      redirect_to venue_gig_path(gig)
    elsif gig.save && organizer.class == Band
      redirect_to band_gig_path(gig)
    else
      render :new
    end
  end
end
