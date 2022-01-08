class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods
  validates :name, presence: { message: 'Please enter a name' }
  validates :preparation_time, presence: { message: 'Please enter a preparation time' }
  validates :cooking_time, presence: { message: 'Please enter a cooking time' }
end
