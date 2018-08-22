class GigsController < ApplicationController
  def index
    @gigs = Gig.all
    @markers = generate_map(@gigs)
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def new # Will be used with a drop-down menu for organizer, unlike on venue and band pages that will auto-populate
    @gig = Gig.new
    @genres = Genre.all.sort_by { |genre| genre.name }
    @organizers = (current_user.bands + current_user.venues).sort_by { |e| e.name }
  end

  def create
    @gig = Gig.new(gig_params)
    @gig.genre = genre
    @gig.organizer = organizer # can be band or venue
    @gig.address = @gig.organizer.address if (gig.organizer.class == Venue && gig_params[:address].blank?) # Sets address to venue if none specified and organizer is a venue

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
    if gig_params[:organizer_type] == "Band"
      return Band.find(gig_params[:organizer_id])
    else
      return Venue.find(gig_params[:organizer_id])
    end
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
