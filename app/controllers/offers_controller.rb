class OffersController < ApplicationController

    def index
        @offers = Offer.all
        if params[:query].present?
            @offers = @offers.where("title ILIKE ?", "%#{params[:query]}%")
        end
    end

    def show
        @offer = Offer.find(params[:id])
    end
end
