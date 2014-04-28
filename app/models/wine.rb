class Wine < ActiveRecord::Base
	validates :name, :year, :country, presence: true
	validates :year,
   		numericality: { only_integer: true, greater_than_or_equal_to: 0 },
   		unless: "year.blank?"
   	has_many :reviews, dependent: :destroy
	def average_rating
  		if reviews.loaded?
    		reviews.map(&:rating).compact.average
  		else
    		reviews.average(:rating)
  		end
	end
end
