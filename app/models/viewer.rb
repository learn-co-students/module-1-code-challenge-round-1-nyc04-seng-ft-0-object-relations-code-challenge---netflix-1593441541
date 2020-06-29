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
  
#   `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
  def reviews(review)
    Review.all.select do |r|
     r.viewer == self
    end
  end


# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.
  def reviewed_movies
    Movies.all.select do |movie|
      movie.title == Review.movie && Review.viewer == self
    end
  end


  def revised_movie?(movie)
    #returns true if viewer has reviewed this movie
    Review.all.select do |movie|
      if movie.viewer == self
        return true
      else 
        return false
      end
    end
  end

  def rate_movie(movie, rating)
    # if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, 
    # this method should create a new `Review` instance
    # if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
    if self.revised_movie? 
      new_rating = Review.rating
    else
      new_rating = Review.new(self, movie, rating)
    end
  end
end
