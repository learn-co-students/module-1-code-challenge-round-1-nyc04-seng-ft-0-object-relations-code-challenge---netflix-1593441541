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

  def reviews
    #iterate over all movie instances to return review instances
    #so something like self.all.map do |movie| return movie.review  
  end

  def reviewers
    #iterate over all viewer instances to return movie instances
    #something like self.all.map do |viewer| return viewer.movie
  end

end
