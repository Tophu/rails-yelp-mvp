class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]
  # a filter to call the method 'set_restaurant' method in 'Private'
  def index
    @restaurants = Restaurant.all
  end

  def show
    # empty to avoid breaking DRY principle
  end

  def new
    @restaurant = Restaurant.new
    # GET verb
    # creates new restaurant without saving it in a form for the user input
  end

  def edit
    # empty to avoid breaking DRY principle
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # POST verb
    # creates a new restaurant without saving & passes the params - HASH
    # through restaurant_params
    if @restaurant.save
      # saves restaurant created
      redirect_to restaurants_path
      # redirects created restaurant to home page
      #
    else
      render :new
      # else inherits the code/user input inside of 'new'html.erb
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    # creates placeholder of ids for restaurant
    # set inside private, but can be accessed with before_action on show & edit
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    # Keys-values inside of restaurant for 'create' method
  end

  def update
    # PATCH verb
  end

  def destroy
    # DELETE verb
  end
end
