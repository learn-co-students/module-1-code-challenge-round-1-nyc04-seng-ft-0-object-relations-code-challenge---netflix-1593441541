class Viewer
  attr_accessor :username

  #array of Viewer objects
  @@all = []

  def initialize(username)
    @username = username
    #adds Viewer object to @@all array
    self.class.all << self
  end

  #returns an array of all Viewer objects
  def self.all
    @@all
  end
  
  #returns an array of all reviews the viewer made
  def reviews
    review = []
    review = Review.all.select {|review| review.viewer == self}
  end

  #find all movies this viewer watched
  def reviewed_movies
    reviewed_movies = []
    reviewed_movies = Review.all.each do |review|
      if review.viewer == self
        reviewed_movies << review.movie
      end
    end
    reviewed_movies
  end
end
