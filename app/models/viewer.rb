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
      rating_to_change = reviews.find { |review| review.movie == movie }
      rating_to_change.rating = rating
    end
  end

  # made extra methods during extra time
  def favorite_movie
    highest_review = reviews.max_by { |review| review.rating }
    highest_review.movie
  end
end
