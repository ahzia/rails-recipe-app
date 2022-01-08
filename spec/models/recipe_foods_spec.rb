require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  it 'belongs to a recipe' do
    recipe_food = RecipeFood.new
    expect(recipe_food).to respond_to(:recipe)
  end

  it 'belongs to a food' do
    recipe_food = RecipeFood.new
    expect(recipe_food).to respond_to(:food)
  end

  it 'has a quantity' do
    recipe_food = RecipeFood.new
    expect(recipe_food).to respond_to(:quantity)
  end
end
