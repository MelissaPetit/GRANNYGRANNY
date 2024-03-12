class OffersController < ApplicationController

    def index
        @offers = Offer.all
        if params[:query].present?
            @offers = @offers.where("title ILIKE ?", "%#{params[:query]}%")
        end
    end
end
