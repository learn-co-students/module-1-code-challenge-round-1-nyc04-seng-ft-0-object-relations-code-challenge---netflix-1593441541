class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all<< self
  end

  def reviews
    Review.all.select {|r| r.viewer==self}
  end

  def reviewed_movies
    self.reviews.map {|r| r.movie}
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie,rating)
    self.reviews.each do |r|
      if self.reviewed_movie?(movie)
        r.rating=rating
      else
        Review.new(self,movie,rating)
      end
    end
  end


  def self.all
    @@all
  end
  
end
