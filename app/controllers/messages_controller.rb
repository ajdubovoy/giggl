class MessagesController < ApplicationController
  before_action :authenticate_user!

 def new
    @chosen_recipient = User.find_by(id: params[:to].to_i) if params[:to]
    @gig = Gig.find(params[:gig_id])
  end

  def create
    recipients = User.where(id: params[:recipients])
    @conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    @gig = Gig.find(params[:gig_id])
    @booking = Booking.create(gig: @gig, status: "pending", band: current_user.bands.first)
    @conversation.booking_id = @booking.id
    @conversation.save
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(@conversation)
  end
end
