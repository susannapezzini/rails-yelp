class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all.order(created_at: :desc)
  end
  
  def show
  
  end

  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # raise
    redirect_to restaurant_path(@restaurant)
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
