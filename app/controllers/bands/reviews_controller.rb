class Bands::ReviewsController < ApplicationController
  before_action :find_band

  def index
    @reviews = Review.where(receiver: @band)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(receiver: @band)
  end

  def create
    @review = Review.new(review_params)
    @review.receiver = @band
    @review,sender = sender
    save_with_error(@review)
  end

  private

  def find_band
    band_params = params.require(:band).permit(:id)
    @band = Band.find(band_params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :professionalism, :quality, :turnout, :subject, :sender_id, :sender_type)
  end

  def sender
    if review_params[:sender_type] == "Band"
      Band.find(review_params[:sender_id])
    else
      Venue.find(review_params[:sender_id])
    end
  end

  def save_with_error(review)
    if review.save
      redirect_to band_review_path(review)
    else
      render :new
    end
  end
end
