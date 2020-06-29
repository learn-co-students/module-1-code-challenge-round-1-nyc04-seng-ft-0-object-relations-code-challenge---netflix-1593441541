class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.viewer == self }
  end
  
  def reviewed_movies
    reviews.map { |review| review.movie }
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if !reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      rating_to_change = self.reviews.find { |review| review.movie == movie }
      rating_to_change.rating = rating
    end
  end
end
