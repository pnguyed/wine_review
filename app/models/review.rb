class Review < ActiveRecord::Base
  belongs_to :wine
  RATINGS = 1..5
validates :name, :comment, presence: true
validates :comment, length: { minimum: 15 }, unless: 'comment.blank?'
validates :rating, inclusion: { in: RATINGS, message: "must be from #{RATINGS.first} to #{RATINGS.last}" }
end
