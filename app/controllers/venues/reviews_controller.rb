class Venues::ReviewsController < ApplicationController
  before_action :find_venue

  def index
    @reviews = Review.where(receiver: @venue)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(receiver: @venue)
  end

  def create
    @review = Review.new(review_params)
    @review.receiver = @venue
    @review.sender = Band.find(review_params[:sender_id])
    save_with_error(@review)
  end

  private

  def find_venue
    venue_params = params.require(:venue).permit(:id)
    @venue = Venue.find(venue_params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :professionalism, :quality, :turnout, :subject, :sender_id)
  end

  def save_with_error(review)
    if review.save
      redirect_to venue_review_path(review)
    else
      render :new
    end
  end
end
