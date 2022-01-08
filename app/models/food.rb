class Food < ApplicationRecord
  belongs_to :user
  validates :name , presence: { message: 'Please enter a name' }
  validates :measurement_unit , presence: { message: 'Please enter a measurement unit' }
  validates :price , presence: { message: 'Please enter a price' }
  has_many :recipe_foods, dependent: :destroy
end
