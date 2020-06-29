# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.

require_relative "./review.rb"

class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.find_reviews_by_movie(self)
  end

  def reviewers
    Review.find_viewers_by_movie(self)
  end

  def average_rating
    sum = self.reviews.reduce(0) do |sum, review_instance|
      sum + review_instance.rating
    end.to_f
    sum/self.reviews.length
  end

  def self.highest_rated
    Review.all.reduce do |max_rated_movie_review, review_instance|
      binding.pry
      max_rated_movie_review = max_rated_movie_review.rating < review_instance.rating ? review_instance : max_rated_movie_review
    end
  end

end
