class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
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
    self.reviews.map do |v|
      v.viewer
    end
  end

  def average_rating
    sum_rating = 0
    self.reviews.map do |r|
      r.rating += sum_rating
      average_rating = sum_rating / sum_rating.size.to_f
    end
    average_rating
  end

  def self.highest_rated
    self.reviews.max_by{|reviews| reviews.review}
  end
  
end
