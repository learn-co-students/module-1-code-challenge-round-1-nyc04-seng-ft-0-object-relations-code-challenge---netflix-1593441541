class Viewer
  attr_accessor :username, :review

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

#   - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
  def reviews
    Review.all.select {|review| review.viewer == self }
  end
# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.
  def reviewed_movies
    reviews.map  {|review| review.movie }
  end

  
end
