class Movie
  attr_accessor :title, :review

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

#   - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
def reviews
  Review.all.select {|review| review.movie == self }
end
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
def reviewers
  reviews.map {|review| review.viewer}
end



end
