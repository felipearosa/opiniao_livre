class Offer < ApplicationRecord
  belongs_to :user

  has_many :deals
  has_many :reviews
  has_many :users, through: :reviews
  validates :title, :description, presence: true

  def price_installments
    price.to_f / 10
  end
end
