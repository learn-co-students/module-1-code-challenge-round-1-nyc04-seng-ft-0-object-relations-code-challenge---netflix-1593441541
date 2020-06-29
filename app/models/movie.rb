class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    # returns an array of all the `Review` instances for the `Movie`
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    # returns an array of all of the `Viewer` instances that reviewed the `Movie`
    self.reviews.map { |review| review.viewer }
  end

  def average_rating
    # returns the average of all ratings for the `Movie` instance
    total_reviews = self.reviews.count
    total_rating_sum = self.reviews.reduce(0) { |sum, review| sum + review.rating }
    (total_rating_sum * 1.0 / total_reviews).round(1)
  end

  def self.highest_rated
    # returns the `Movie` instance with the highest average rating
    highest_average_rating = 0
    highest_average_rating_movie = nil

    self.all.each do |movie|
      if movie.average_rating > highest_average_rating
        highest_average_rating = movie.average_rating
        highest_average_rating_movie = movie
      end
    end

    highest_average_rating_movie
  end

  def self.all
    @@all
  end
end