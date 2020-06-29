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
    #review instance related with viewer inst
    #the one reviewwriter name == viewer username
    Review.all.select{
      |review| review.name == self
    }
  end
  def reviewed_movies 
    #reviewed*movie inst related with viewer
    #map or collect both are ok
    reviews.map{|review| review.movie}
  end
  def reviewed_movie?(movie)
    #conditional
    if reviewed_movies.movie == movie
      true
    else
      false
    end
    def rate_movie(movie,rating)
      #conditional
      #if reviewed_movie? == true
      #review.rating == rating
      #else
      #Review.new(self, movie, rating)
    end
end
