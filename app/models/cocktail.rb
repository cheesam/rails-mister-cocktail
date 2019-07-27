class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingedient, through: :doses
  validates :name, presence: true, uniqueness: true
end
