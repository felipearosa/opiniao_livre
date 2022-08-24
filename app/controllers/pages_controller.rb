class PagesController < ApplicationController
  def home
    @offers = Offer.all

    # if offer.category == 'facebook'
    #   @image =
    # elsif

    # end
  end
end
