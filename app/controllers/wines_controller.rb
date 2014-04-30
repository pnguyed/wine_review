class WinesController < ApplicationController
	before_action :set_wine, only: [ :show, :edit, :update, :destroy ]
	def index
  		@available_at = Time.now
  		@wines = Wine.includes(:reviews).order(:name).page(params[:page])
	end
	def show
  		#@wines = Wine.find(params[:id])
	end
	def new
  		@wine = Wine.new
	end

	def create
    	@wine = Wine.new(wines_params)
    	if @wine.save
      		redirect_to wines_path, notice: "#{@wine.name} was created!"
    	else
      		render :new
    	end
	end
	def edit
  		#@wine = Wine.find(params[:id])
	end

	def update
    	if @wine.update(wines_params)
      		redirect_to @wines, notice: "#{@wine.name} was created!"
    	else
      		render :new
    	end
	end
	def destroy
  		#@wine = Wine.find(params[:id])
  		@wine.destroy
  		redirect_to wines_url
	end
	private
	def set_wine
  		@wine = Wine.find(params[:id])
	end
	def wines_params
  		params.require(:wine).permit(:name, :country, :year, :winery, :varietal)
	end
end