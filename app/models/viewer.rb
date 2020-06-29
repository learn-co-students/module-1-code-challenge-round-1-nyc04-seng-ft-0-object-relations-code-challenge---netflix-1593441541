class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      review_obj = movie.find_review_by_viewer(self)
      review_obj.rating = rating
    else 
      Review.new(self, movie, rating)
    end
  end

  def reviews 
    Review.all.select { |review| review.viewer == self }
  end

  def reviewed_movies
    self.reviews.map { |review| review.movie }
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def self.all
    @@all
  end
  
end
