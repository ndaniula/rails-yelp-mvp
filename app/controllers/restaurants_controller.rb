class RestaurantsController < ApplicationController

   def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def find
    @restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

private

def restaurant_params
      params.require(:restaurant).permit(:name, :address, :category, :phone_number)
    end
end
