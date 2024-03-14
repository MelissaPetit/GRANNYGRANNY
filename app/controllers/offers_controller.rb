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
  end
end
