class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }

  def total_price
    quantity * food.price
  end
end
