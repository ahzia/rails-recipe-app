class FoodsController < ApplicationController
  def index
    if current_user
      @foods = Food.all
      @users = User.all
    else
      flash[:notice] = 'Please Login First'
      redirect_to new_user_session_path
    end
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user = current_user
    if @food.save
      flash[:notice] = 'Food added successfully'
      redirect_to foods_path
    else
      render :new
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      flash[:notice] = 'Food updated successfully'
      redirect_to foods_path
    else
      render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    flash[:notice] = 'Food deleted successfully'
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
