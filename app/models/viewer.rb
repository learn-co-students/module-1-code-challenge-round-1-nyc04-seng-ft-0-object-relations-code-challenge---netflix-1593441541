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

  def reviews
    # All viewer review objects
    Review.all.select{ |reviews| reviews.user == self }
  end

  def movies
    # Returns all movies associated with viewer
    reviews.map(&:title)
  end

  def rate_movie(title, rating)
    # Validates if user has reviewed movie. Updates rating if true, creates new rating if false
    reviewed_movie?(title) ? select_movie(title).update_review=(rating) : Review.new(self, title, rating)
    select_movie(title)
  end

  def reviewed_movie?(title)
    # Returns True if user has reviewed movie
    reviews.find { |review| review.title == title && review.user == self } ? true : false
  end

  def select_movie(title)
    # Helper method to select movie instance that user has reviewed
    reviews.find { |review| review.title == title && review.user == self }
  end
end
