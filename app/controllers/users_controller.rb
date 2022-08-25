class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @journalist_offers = Offer.where(user_id: params[:id])
    authorize @user
  end
end
