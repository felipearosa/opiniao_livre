class OffersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def edit
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    authorize @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @user == current_user
    @offers = policy_scope(Offer)
    if params[:query].present?
      @offers = Offer.search_by_atts(params[:query])
    else
      @offers = Offer.all
    end
    @user = current_user
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    authorize @offer
    # No need for app/views/offers/destroy.html.erb
    redirect_to offers_path, status: :see_other
  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
    @deal = Deal.new
    @user = @offer.user
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :media, :niche, :reach)
  end
end
