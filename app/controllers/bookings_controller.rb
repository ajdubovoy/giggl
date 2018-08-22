class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.band = band
    @booking.gig = gig

    save_with_error @booking
  end

  private

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
    gig_params = params.require(:band).permit(:id)
    gig_id = gig_params[:id]
    Gig.find(gig_id)
  end
end
