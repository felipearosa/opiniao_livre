class Offer < ApplicationRecord
  CATEGORIES = ['Corrente de Whatsapp', 'Vlog no Youtube', 'Artigo Jurídico', 'Stories no Instagram', 'Dancinha no TikTok', 'Tweet', 'Coluna no Jornal']


  belongs_to :user

  has_many :deals
  has_many :reviews
  has_many :users, through: :reviews
  validates :title, :description, :price, :media, :niche, :reach, presence: true
  validates :description, length: { maximum: 240 }
  validates :title, length: { maximum: 56 }

  def price_installments
    price.to_f / 10
  end

  def image
    if media == 'Corrente de Whatsapp'
      'whatsapp.jpg'
    elsif media == 'Vlog no Youtube'
      'youtube.png'
    elsif media == 'Artigo Jurídico'
      'advogado.jpg'
    elsif media == 'Stories no Instagram'
      'instagram.jpg'
    elsif media == 'Dancinha no TikTok'
      'tiktok.jpg'
    elsif media == 'Tweet'
      'twitter.jpg'
    elsif media == 'Coluna no Jornal'
      'jornal.jpg'
    else
      'fake.jpg'
    end
  end

  # def image
  #   if category
  # end
end
