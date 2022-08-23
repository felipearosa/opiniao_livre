class OffersController < ApplicationController
  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    # No need for app/views/offers/destroy.html.erb
    redirect_to offers_path, status: :see_other
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
