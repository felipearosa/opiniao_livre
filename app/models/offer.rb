class Offer < ApplicationRecord
  belongs_to :user
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

end
