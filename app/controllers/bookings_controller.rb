class BookingsController < ApplicationController
  # la méthode set_booking sera exécutée uniquement avant l'action :destroy
  before_action :set_booking, only: [:destroy]

  # as a user I can see my bookings (particularly a client)
  def index
    # Lister toutes les réservations, et les récupérer dans l'instance @bookings
    @bookings = Booking.where(user: current_user)
    @upcoming_bookings = @bookings.where('date > ?', DateTime.now)
    @past_bookings = @bookings.where('date <= ?', DateTime.now)
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    @total_price = @booking.participant_number * @offer.price_per_participant
    @booking.total_price = @total_price
    if @booking.save
        redirect_to bookings_path
    else
        render "offers/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    # si l'id de réservation correspond à l'utilisateur en cours ...
    if @booking.user == current_user
      @booking.destroy
      # redirection vers la page bookings
      redirect_to bookings_path, notice: "La réservation a été supprimée avec succès."
    else
      redirect_to bookings_path, alert: "Vous n'êtes pas autorisé à supprimer cette réservation."
    end
  end

  private

  def booking_params
    # seuls les :id de booking sont autorisés lors de la suppression.
    params.require(:booking).permit(:date, :participant_number, :comment)

  end

  def set_booking
    # seul l'id actuel de l'itération sera traité
    @booking = Booking.find(params[:id])
  end
end

      