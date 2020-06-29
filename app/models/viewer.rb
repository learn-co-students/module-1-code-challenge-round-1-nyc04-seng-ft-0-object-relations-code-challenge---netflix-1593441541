class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  #returns an array of `Review` instances associated with the `Viewer` 
  def reviews
    Review.all.select {|r| r.viewer == self}
  end

  #returns an array of `Movie` instances reviewed by the `Viewer` instance.
  def reviewed_movies
    self.reviews.select {|r| r.movie == self}
  end
end
