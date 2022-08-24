class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  CATEGORIES = ['Tia do Zap', 'Youtuber', 'Advogado', 'Influencer de Instagram', 'TikToker', 'Twitteiro', 'Jornalista']

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offers
  has_many :deals
  has_many :reviews

  validates :first_name, presence: true
  validates :last_name, presence: true

  # def image
  #   if category
  # end
end
