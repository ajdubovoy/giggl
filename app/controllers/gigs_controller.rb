class GigsController < ApplicationController
  def index
    @gigs = Gig.all
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def new
    @gig = Gig.new
  end

  def create

  end

  private
  def gig_params
    params.permit(:gig).require(:datetime, :address, :genre_id, :paid)
  end

end
