# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
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
    sum = self.reviews.reduce(:+)
  end

end
