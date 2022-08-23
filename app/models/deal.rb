class Deal < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :directions, presence: true
end
