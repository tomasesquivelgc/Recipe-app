class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :food_id, uniqueness: { scope: :recipe_id }, presence: true
end
