require 'pry'
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
    Review.all.select do |rev_in|
      rev_in.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |rev|
        rev.movie
      end
  end
  
  def reviewed_movie?(movie)
    movies = self.reviewed_movies
    movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if !self.reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      # access my last review for this movie
      self.reviewed_movies.select do |rev|
        rev.rating == rating
      end
    end
  end

  
end
