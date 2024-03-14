class Grandma::OffersController < ApplicationController
  def index
    @bookings = Booking.joins(:offer).where(offers: { user_id: current_user.id })
    @mybookings = Booking.where(offer_id: @offers)
  end
end
