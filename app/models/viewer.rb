class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end
  
  def find_review(movie)
    reviews.find do |review|
      review.movie == movie
    end
  end

  def rate_movie(movie, rating)
      reviewed_movies.include?(movie) ? find_review(movie).rating = rating : Review.new(self, movie, rating)
  end

end
