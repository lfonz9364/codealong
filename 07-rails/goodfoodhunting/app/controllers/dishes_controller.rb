class DishesController < ApplicationController

  def index
    @dishes = Dish.all
    @dish = Dish.find_by(params[:dish_id])
    @user = User.find_by(params[:user_id])
  end

  def new
  end

  def create
    new_dish = Dish.new
    new_dish.name = params[:name]
    new_dish.image_url = params[:img_url]
    if new_dish.save
      redirect_to '/dishes'
    else
      render :new
    end
  end

  def destroy
    dish = Dish.find(params[:dish_id])
    if dish.destroy
      redirect_to '/dishes'
    else
      render :index
    end
  end

  def show
    @dish = Dish.find_by(params[:dish_id])
    @user = User.find_by(params[:user_id])
  end

end
