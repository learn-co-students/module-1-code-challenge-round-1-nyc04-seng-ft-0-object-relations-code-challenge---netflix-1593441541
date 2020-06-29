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

  
end
