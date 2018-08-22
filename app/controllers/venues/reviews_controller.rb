class Venues::ReviewsController < ApplicationController
  before_action :find_venue

  def index
    @reviews = Review.where(venue: @venue)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.gig = gig
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private

  def find_venue
    venue_params = params.require(:venue).permit(:id)
    @venue = Venue.find(venue_params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :professionalism, :quality, :turnout, :subject)
  end

  def booking
    booking_params = params.require(:booking).permit(:id)
    return Booking.find(booking_params[:id])
  end

  def gig
    return booking.gig
  end
end
