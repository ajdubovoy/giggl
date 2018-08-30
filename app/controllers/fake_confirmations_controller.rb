class FakeConfirmationsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @booking.status = "confirmed"
    @booking.save
    redirect_to booking_path(@booking)
  end
end
