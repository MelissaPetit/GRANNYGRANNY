class Grandma::OffersController < ApplicationController
  def index
    @bookings = Booking.joins(:offer).where(offers: { user_id: current_user.id })
  end
end
