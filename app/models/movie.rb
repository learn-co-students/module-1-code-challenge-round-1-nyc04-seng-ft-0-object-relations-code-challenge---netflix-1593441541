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
    Review.all.select {|i| i.movie == self}
  end

  def reviewers
    reviews.map {|i| i.viewer}
  end

  # def average_rating
  #   reviews.each {|i| binding.pry}
  # end

end
