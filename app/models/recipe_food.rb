class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food
  validates :quantity, presence: { message: 'Please enter a quantity' }

  def calc_value(quantity, price)
    quantity * price
  end
end
