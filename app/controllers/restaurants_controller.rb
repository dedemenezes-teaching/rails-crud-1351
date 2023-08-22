class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    # 1. restrieve all the restaurants
    # 2. make the available in the view
    @restaurants = Restaurant.all # retrieves all the restaurants from the DB
  end

  def show
    # 1. restrieve the restaurant
    # raise
    # 2. make the available in the view
    @restaurant
  end

  def new
    # CREATE AN EMPTY INSTANCE TO BE USED ON THE FORM
    @restaurant = Restaurant.new
  end

  def create
    # raise
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    # CREATE ACTION DOESN'T HAVE A VIEW
    # prefix_path
    redirect_to restaurants_path #=> '/restaurants'
  end

  def edit
    # RETRIEVE THE RIGHT INSTANCE TO BE USED ON THE FORM

  end

  def update

    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant) #=> '/restaurants/32523
  end

  def destroy
    # => @restaurant defined in the before_action callback
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # STRONG PARAMS => NOT OPTIONAL!
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
