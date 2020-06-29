#### Viewer

#- `Viewer#reviewed_movie?(movie)`
  #- a `Movie` instance is the only argument
 # - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
#- `Viewer#rate_movie(movie, rating)`
  #- a `Movie` instance and a rating (number) are passed in as arguments
  #- if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
  #- if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance




class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.find do |viewer_instance|
      viewer_instance.viewer 
    end
  end
  def reviewed_movies
    Review.all.find do |review_instance|
      review_instance.movie
    end
  end

  def reviewed_movie?(movie)
    Viewer.all.find do |viewer_instance|
      viewer_instance == movie
        return true
    end
    false
  end

   def rate_movie(movie, rating)
    #I want to check if the viewer and  movie are not connected create a new Review.new instance
    Movie.all.find |movie_instance|
    movie_instance.title != self
    #create a new Review instance

   end
  end

  

  def self.all
    @@all
  end
  
end
