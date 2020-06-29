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
    all.max_by { |movie| movie.average_rating }
  end

  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    reviews.map  { |review| review.viewer }
  end

  def average_rating
    total = reviews.sum { |review| review.rating }
    # as a float?
    total / reviews.count.to_f
  end

  # made extra methods during extra time
  def self.most_reviewed
    all.max_by { |movie| movie.reviews.count }
  end

  def self.best_movies # movies rated 5
    reviews_with_5 = Review.all.select { |review| review.rating == 5 }
    reviews_with_5.map { |review| review.movie }.uniq
  end
end
