class Offer < ApplicationRecord
  CATEGORIES = ['Corrente de Whatsapp', 'Vlog no Youtube', 'Artigo Jurídico', 'Stories no Instagram', 'Dancinha no TikTok', 'Tweet', 'Coluna no Jornal']


  belongs_to :user

  has_many :deals
  has_many :reviews
  has_many :users, through: :reviews
  validates :title, :description, presence: true


  def price_installments
    price.to_f / 10
  end

  # def image
  #   if category
  # end
end
