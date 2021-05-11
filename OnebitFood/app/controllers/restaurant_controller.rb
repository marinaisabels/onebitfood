class RestaurantController < ApplicationController
  before_action :set_restaurant, only: :show
  
  def index
    @restaurants = Restaurants.all
  end

  def show
  end

  private 

  def set_restaurant
    @restaurants = Restaurant.find(params[:id])
  end
end
