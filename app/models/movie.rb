class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    self.reviews.map { |review| review.viewer }
  end

  def find_review_by_viewer(viewer)
    Review.all.find do |review|
      review.movie == self &&
      review.viewer == viewer
    end
  end

  def average_rating
    review_arr = self.reviews
    return 0 if review_arr.empty?

    rating_total = review_arr.reduce(0) do |sum, review|
      sum += review.rating
    end

    rating_total.fdiv(review_arr.length)
  end

  def self.highest_rated
    self.all.max_by { |movie| movie.average_rating }
  end

  def self.all
    @@all
  end

end
