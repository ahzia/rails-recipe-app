require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'belongs to a user' do
    food = Food.new
    expect(food).to respond_to(:user)
  end

  it 'has a name' do
    food = Food.create(name: 'Pizza')
    expect(food.name).to eq('Pizza')
  end

  it 'has a measurement unit' do
    food = Food.create(measurement_unit: 'g')
    expect(food.measurement_unit).to eq('g')
  end
end
