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
    Review.all.select {|i| i.viewer == self}
  end

  def reviewed_movies
    reviews.map {|i| i.movie}
  end

  def reviewed_movie?(movie)
    Review.all.find do|i|
      if i.movie == movie && i.viewer == self
         return true
      else
        return false
      end
    end
  end

# I was trying to get the
  def re_review(movie,rating)
    Review.all.find do |i|
      i.movie == movie
      i.rating = rating
    end
  end

  def rate_movie(movie,rating)
    if reviewed_movie?(movie)
      re_review(movie,rating)
    else
      Review.new(self, movie, rating)
    end
  end


end
