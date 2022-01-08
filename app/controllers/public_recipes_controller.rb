class PublicRecipesController < ApplicationController
  def index
    if current_user
      @recipes = Recipe.where(public: true)
    else
      flash[:notice] = 'Please Login First'
      redirect_to new_user_session_path
    end
  end
end
