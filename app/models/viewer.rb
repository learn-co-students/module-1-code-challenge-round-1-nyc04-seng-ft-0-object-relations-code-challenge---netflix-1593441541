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

  def reviews
    #iterate over all viewer instances to return review instances
    #so something like self.all.map do |viewer| return viewer.review  
  end

  def reviewed_movies
    #iterate over all viewer instances to return movie instances
    # something like self.all.map do |viewer| return viewer.movie
  end

  def reviewed_movie?(movie)
    #iterate all viewers to see if they reviewed movie
    #if v1 == m1, return true, else return nil
  end

  def rate_movie(movie, rating)
    #iterate over all viewer instances using each to check movie instances
    #if v1 != a present rating, return Review.new
    #else
    #if there is a rating present for viewer, then r1.rating = "new_num"
  end

  
end
