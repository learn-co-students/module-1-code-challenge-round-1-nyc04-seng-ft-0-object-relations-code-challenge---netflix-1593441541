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
  
  #returns an array of Review instances associated with the Viewer instance.
  def reviews
    Review.all.select {|rev| rev.viewer_inst == self}
  end

  #returns an array of Movie instances reviewed by the Viewer instance.
  def reviewed_movies
    Review.all.select {|rev| rev.viewer_inst.username == self.username}
  end 

  #returns true(if there is a Review instance that has this Viewer and Movie), returns false otherwise
  def reviewed_movie?(movie)
    Review.all.each do |rev|
      if rev.viewer_inst == self && rev.movie_inst == movie
        return true
      else 
        return false
      end
    end
  end

  #NOT WORKING
  def rate_movie(movie, rating)
    Review.all.each do |rev|
      if !rev.movie_inst == movie
        return Review.new(self, movie, rating)
      elsif rev.movie_inst == movie 
        return rev.rating_num = rating 
      end
    end
  end
end

#ruby tools/console.rb 