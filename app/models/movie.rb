require 'pry'
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
    Review.all.select do |rev|
      rev.movie == self
      binding.pry
    end
  end

  def reviewers
    self.reviews.map do |rev|
      rev.viewer
    end
  end

end
