class Review
  attr_reader :viewer, :movie
  attr_accessor :rating

  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie

    # taking into considering edge cases where user puts a negative value rating or a rating over 10
    if rating < 0 
      @rating = 0
    elsif rating > 10
      @rating = 10
    else
      @rating = rating
    end

    @@all << self
  end

  def self.all
    @@all
  end
end