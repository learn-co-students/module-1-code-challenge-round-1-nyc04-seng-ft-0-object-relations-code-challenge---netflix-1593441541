class Review
  attr_accessor :rating
  attr_reader :viewer, :movie, :reader
  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def update_review=(rating)
    @rating = rating
  end
end
