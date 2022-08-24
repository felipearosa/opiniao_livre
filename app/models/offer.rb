class Offer < ApplicationRecord
  belongs_to :user

  has_many :deals
  has_many :reviews
  has_many :users, through: :reviews

  def index
  end

  def new
  end

  def create
  end

  def delete
  end

  def price_divide
    @final_price = (@price.to_f / 10).to_s.gsub(".", ",")
  end
end
