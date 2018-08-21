class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.band = band
    @booking.gig = gig

    save_with_error @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:gig_id)
  end

  def save_with_error(booking)
    if booking.save
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  def band
    band_params = params.require(:band).permit(:id)
    band_id = band_params[:id]
    Band.find(band_id)
  end

  def gig
    Gig.find(booking_params[:gig_id])
  end
end
