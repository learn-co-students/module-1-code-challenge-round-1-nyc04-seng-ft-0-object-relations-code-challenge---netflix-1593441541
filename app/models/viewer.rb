require_relative "./review.rb"

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.find_reviews_by_viewer(self)
  end
  
  def reviewed_movies
    Review.find_movies_reviewed_by_viewer(self)
  end

  def reviewed_movie?(movie)
    Review.find_movies_reviewed_by_viewer(self).include?(movie)
  end
  
  def rate_movie(movie, rating)
    if !self.reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      old_review = Review.find_reviews_by_viewer(self).find do |review_instance|
        review_instance.movie == movie
      end
      old_review.rating = rating
    end
  end
  
end
