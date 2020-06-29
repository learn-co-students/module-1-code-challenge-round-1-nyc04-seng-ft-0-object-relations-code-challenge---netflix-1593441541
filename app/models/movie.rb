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

  #returns an array of all the `Review` instances for the `Movie`.
  def reviews
    Review.all.select {|r| r.movie == self}
  end

  #returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def reviewers
    
  end

  def average_rating
    # self.reviews.map_with_index {|r, i| (r.rating +=  rating)/ i+}
  end
  # def self.highest_rated
  #   Review.all.find {|r| r.rating >= 100}
  # end
end
