class Grandma::OffersController < ApplicationController
  def index
    @offers = Offer.where(user: current_user)
    @mybookings = Booking.where(offer_id: @offers)
    @myPendingBookings = @mybookings.where(status: "En attente")
    @myAcceptedBookings = @mybookings.where(status: "Accepté")
    @myDeclinedBookings = @mybookings.where(status: "Refusé")
  end
end
