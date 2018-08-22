class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
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
  
   def sender
    player = booking.band
    organizer = booking.gig.organizer

    if current_user.bands.include? player
      return player
    else
      return organizer
    end
  end

  def receiver
    player = booking.band
    organizer = booking.gig.organizer

    if current_user.venues.include? organizer || current_user.bands.include? organizer
      return organizer
    else
      return player
    end
  end
end
