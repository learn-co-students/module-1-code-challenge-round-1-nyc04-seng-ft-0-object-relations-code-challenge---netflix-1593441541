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

end
