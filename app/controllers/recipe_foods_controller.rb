class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.where(user: current_user)
  end

  def create
    @recipe_foods = RecipeFood.where(recipe_id: params[:recipe_id])
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.where(user: current_user)
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.recipe = @recipe
    if @recipe_food.save
      flash[:notice] = 'Food added successfully'
      redirect_to recipe_path(@recipe)
    else
      flash[:notice] = 'Food not added'
      render :new
    end
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :quantity)
  end
end
