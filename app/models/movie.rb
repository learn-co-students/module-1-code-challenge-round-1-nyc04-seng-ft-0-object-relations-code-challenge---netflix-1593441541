class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.highest_rated
    self.all.max_by { |movie| movie.average_rating }
  end

  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    reviews.map  { |review| review.viewer }
  end

  def average_rating
    total = self.reviews.sum { |review| review.rating }
    # as a float?
    total / reviews.count.to_f
  end
end
