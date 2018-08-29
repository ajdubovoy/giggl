class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    @gig = @booking.gig
    @band = @booking.band
    @organizer = @gig.organizer
    @markers = generate_map([@gig])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.band = band
    @booking.gig = gig

    save_with_error @booking
  end

  private

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

  def booking_params
    params.require(:booking).permit(:band_id)
  end

  def save_with_error(booking)
    if booking.save
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  def band
    Band.find(booking_params[:band_id])
  end

  def gig
    Gig.find(params[:gig_id])
  end
end
