class OffersController < ApplicationController

  def edit
  @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @offer = Offer.new()
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @offers = Offer.all
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    # No need for app/views/offers/destroy.html.erb
    redirect_to offers_path, status: :see_other
  end

  def show
    @offer = Offer.find(params[:id])
    @deal = Deal.new
    @user = @offer.user
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :media, :niche, :reach)
  end
end
