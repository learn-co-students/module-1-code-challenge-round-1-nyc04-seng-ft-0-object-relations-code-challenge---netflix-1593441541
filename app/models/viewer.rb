class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    # Viewer.all
    @@all
  end

  def change_username=(username)
    # Update viewer username value
    @username = username
  end

  def rate_movie(movie, rating)
    # Validates if user has reviewed movie. Updates rating if true, creates new rating if false
    reviewed_movie?(movie) ? select_movie(movie).update_review=(rating) : Review.new(self, movie, rating)
    select_movie(movie)
  end

  def reviews
    # All viewer review objects
    Review.all.select{ |reviews| reviews.viewer == self }
  end

  def movies
    # Returns all movies associated with viewer
    reviews.map(&:movie)
  end

  def select_movie(movie)
    # Helper method to select movie instance that user has reviewed
    reviews.find { |review| review.movie == movie && review.viewer == self }
  end

  def reviewed_movie?(movie)
    # Returns True if user has reviewed movie
    reviews.find { |review| review.movie == movie && review.viewer == self } ? true : false
  end

end
