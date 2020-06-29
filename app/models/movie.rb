class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    # Movie.all
    @@all
  end

  def change_title=(title)
    # Update title value
    @title = title
  end

  def reviews
    # Returns all reviews for a movie
    Review.all.select{ |reviews| reviews.title == self }
  end

  def reviewers
    # Returns all reviewers who have reviewed the movie
    reviews.map(&:user)
  end

  def average_rating
    rating = 0
    total = reviews.map { |review| rating += review.rating }
    rating / total.length
  end

  def self.highest_rated
    self.all.max_by(&:average_rating)
  end
end
