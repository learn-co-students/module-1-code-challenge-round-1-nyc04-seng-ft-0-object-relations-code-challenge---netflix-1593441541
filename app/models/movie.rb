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
    Review.all.select {|i| i.movie == self}
  end

  def reviewers
    reviews.map {|i| i.viewer}
  end

  def movie_ratings
    reviews.map{|i| i.rating}
  end

  def average_rating
    movie_ratings.inject(&:+).to_f / movie_ratings.size
  end

  # `Movie.highest_rated`
  #   - returns the `Movie` instance with the
  #   highest average rating.

  # def self.highest_rated
  # 
  # end

end
