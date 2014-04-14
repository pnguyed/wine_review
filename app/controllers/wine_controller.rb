class WineController < ApplicationController
	def index
		@available_at = Time.now
		@wine = Wine.all
	end
	def show
  		@wines = Wine.find(params[:id])
	end
	def new
  		@wine = Wine.new
	end

	def create
  		@wine = Wine.new(wine_params)
  		@wine.save
  		redirect_to @wine
	end
	def edit
  		@wine = Wine.find(params[:id])
	end

	def update
  		@wine = Wine.find(params[:id])
  		@wine.update(wine_params)
  		redirect_to @wine
	end

	private

	def wine_params
  		params.require(:wine).permit(:name, :country, :year, :winery, :varietal)
	end
end