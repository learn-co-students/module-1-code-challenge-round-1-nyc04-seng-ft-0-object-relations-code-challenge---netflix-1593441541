class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    reviews.map do |review|
      review.viewer
    end
  end
  
  def total_ratings
    reviews.sum do |review|
      review.rating
    end
  end

  def average_rating
    (self.total_ratings/reviews.count)
  end
  
  def self.highest_rated
    self.all.sort_by do |movie|
      movie.average_rating
    end
    .last
  end

end
