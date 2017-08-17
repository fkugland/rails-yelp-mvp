class RestaurantsController < ApplicationController
  def index         # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show          # GET /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def new           # GET /restaurants/new
    @restaurant = Restaurant.new
  end

  def create        # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit          # GET /restaurants/:id/edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update        # PATCH /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy       # DELETE /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
