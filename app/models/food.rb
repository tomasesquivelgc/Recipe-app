class Food < ApplicationRecord
  has_many :recipe_foods
  has_many :recipes
  belongs_to :user

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
