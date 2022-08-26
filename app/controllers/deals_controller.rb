class DealsController < ApplicationController

  def create
    @deal = Deal.new(deal_params)
    @deal.user = current_user
    @offer = Offer.find(params[:offer_id])
    @deal.offer = @offer
    authorize @deal

    if @deal.save
      redirect_to user_path(current_user)
    else
      render 'offers/show', status: :unprocessable_entity
    end
  end

  private

  def deal_params
    params.require(:deal).permit(:directions)
  end
end
