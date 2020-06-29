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
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}
  end
  
  def total_ratings
    reviews.sum {|review| review.rating}
  end

  def average_rating
    self.total_ratings/reviews.count
  end

  def self.sorted_by_rating
    self.all.sort_by {|movie| movie.average_rating}
  end
  
  def self.highest_rated
    self.sorted_by_rating.last
  end

end
