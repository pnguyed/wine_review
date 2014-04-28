class ReviewsController < ApplicationController
	before_action :set_wine

	def index
  		@reviews = @wine.reviews.order('created_at desc')
	end
	def new
  		@review = @wine.reviews.new
	end

	def create
  		@review = @wine.reviews.new(review_params)
  	if @review.save
    	redirect_to wine_reviews_path(@wine), notice: 'Review saved!'
  	else
    	render :new
  	end
end
	private
	def review_params
  		params.require(:review).permit(:rating, :name, :comment)
	end
	def set_wine
  		@wine = Wine.find(params[:wine_id])
	end
end
