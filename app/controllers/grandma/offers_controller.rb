class Grandma::OffersController < ApplicationController
  def index
    @offers = Offer.where(user: current_user)
    @mybookings = Booking.where(offer_id: @offers)
    @myPendingBookings = @mybookings.where(status: "En attente")
    @myAcceptedBookings = @mybookings.where(status: "Accepté")
    @myDeclinedBookings = @mybookings.where(status: "Refusé")
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to grandma_offers_path, notice: 'L\'offre a été créée avec succès.'
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :start_from, :price_per_participant, :photo_url, :duration, :category, :address, :capacity)
  end
end
