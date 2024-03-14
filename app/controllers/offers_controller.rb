class OffersController < ApplicationController
  def index
    @offers = Offer.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR description ILIKE :query"
      @offers = @offers.where(sql_subquery, query: "%#{params[:query]}%")
    end
    if params[:address].present?
      @offers = @offers.where("address ILIKE ?", "%#{params[:address]}%")
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
  end

  # def dates_to_disable
  #  @dates_to_disable = @old.pluck(:date_from)
  # end
end
