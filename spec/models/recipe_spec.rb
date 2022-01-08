require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it 'belongs to a user' do
    recipe = Recipe.new
    expect(recipe).to respond_to(:user)
  end

  it 'has a name' do
    recipe = Recipe.create(name: 'Pizza')
    expect(recipe.name).to eq('Pizza')
  end

  it 'has a description' do
    recipe = Recipe.create(description: 'A delicious pizza')
    expect(recipe.description).to eq('A delicious pizza')
  end
end
