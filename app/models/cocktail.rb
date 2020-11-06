class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  has_one_attached :cocktail_image

  validates :name, presence: true
  validates :name, uniqueness: true
end
