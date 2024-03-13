class OffersController < ApplicationController
  def index
    @offers = Offer.all
    if params[:query].present?
      @offers = @offers.where("title ILIKE ?", "%#{params[:query]}%")
    elsif params[:category].present?
      @offers = Offer.where(category: params[:category])
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    # @booking = Booking.new(booking_params)
    # @booking.offer = @offer
    # @booking.user = current_user
    # if @booking.save
    #     redirect_to offer_path(@offer)
    # else
    #     render :show, status: :unprocessable_entity
    # end
  end

  # private

  # def booking_params
  #     params.require(:booking).permit(:date, :participant_number, :comment, :total_price, :status)
  # end
end
