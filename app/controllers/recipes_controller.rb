class RecipesController < ApplicationController
  def index
    @recipes = Recipe.where(user_id: current_user.id)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      flash[:notice] = 'Recipe added successfully'
      redirect_to recipes_path
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      flash[:notice] = 'Recipe updated successfully'
      redirect_to recipes_path
    else
      render :edit
    end
  end
  
  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.user_id == current_user.id
      @recipe.destroy
      flash[:notice] = 'Recipe deleted successfully'
      redirect_to recipes_path
    else
      flash[:notice] = 'Only deletable by the owner'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :public)
  end
end
