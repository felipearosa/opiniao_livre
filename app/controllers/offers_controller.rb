class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
