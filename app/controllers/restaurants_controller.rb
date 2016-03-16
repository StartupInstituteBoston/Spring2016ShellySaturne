class RestaurantsController < ApplicationController

  def index
  	@restaurant = Restaurants.all
  end
  	
  def new
	@restaurant = Restaurant.new
	end		

	def create
		@restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
    redirect_to @restaurant
	end

	private
		def restaurant_params
			params.require(:restaurant).permit(:name,:address)
		end	

	def show
		@restaurant = Restaurant.find(params[:id])
	end


end
