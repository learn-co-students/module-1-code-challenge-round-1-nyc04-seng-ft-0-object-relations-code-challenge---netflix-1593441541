###- `Movie#reviews`
  ##- returns an array of all the `Review` instances for the `Movie`. 
  
  ###- `Movie#reviewers`
   # - returns an array of all of the `Viewer` instances that reviewed the `Movie`.




class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
   Review.all.select do |movie_instance|
    movie_instance.movie
   end
  end
  
  def reviewers
    Viewer.all.select do |viewer_instance|
      
      viewer_instance.username
    end
  end

  def self.all
    @@all
  end

end
