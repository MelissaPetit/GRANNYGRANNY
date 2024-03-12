class BookingsController < ApplicationController
  # as a user I can see my bookings (particularly a client)
  def index
    @bookings = Booking.all
  end
end
