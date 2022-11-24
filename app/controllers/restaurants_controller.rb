class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # @restaurant = Restaurant.new(name: params[:name], address: params[:address], phone_number: params[:phone_number], category: params[:category])
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
