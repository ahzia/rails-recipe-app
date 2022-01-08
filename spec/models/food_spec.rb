require 'rails_helper'
# class Food < ApplicationRecord
#   belongs_to :user
#   validates :name , presence: { message: 'Please enter a name' }
#   validates :measurement_unit , presence: { message: 'Please enter a measurement unit' }
#   validates :price , presence: { message: 'Please enter a price' }
#   has_many :recipe_foods, dependent: :destroy
# end
RSpec.describe Food, type: :model do
  it 'belongs to a user' do
    food = Food.new
    expect(food).to respond_to(:user)
  end

  it 'has a name' do
    food = Food.create(name: 'Pizza')
    expect(food.name).to eq('Pizza')
  end
end
