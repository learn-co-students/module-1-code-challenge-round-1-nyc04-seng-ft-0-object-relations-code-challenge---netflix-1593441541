require 'pry'
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
    Review.all.select do |rev|
      rev.movie == self
      binding.pry
    end
  end

  def reviewers
    self.reviews.map do |rev|
      rev.viewer
    end
  end
  # have to get all the ratings for the movie
  # have to get all the reviews for self
  def movie_reviews
    Review.all.select do |rev|
      rev.movie == self
    end
  end

  def average_rating
    self.movie_reviews.sum{|rev| rev.rating} / self.movie_reviews.length
  end
  # 
  def self.highest_rated
    # returns one movie instance with the highest rate
    # get the average of every movie >> save that
    # create a hash with movie and its average rating
    # sorty_by the average rating
     return the last ke
    
      
    end
  end

end
