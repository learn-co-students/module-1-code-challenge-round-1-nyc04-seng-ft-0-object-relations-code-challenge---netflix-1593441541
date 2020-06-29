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

  #returns an array of all reviews for this viewer instance
  def reviews
    Review.all.select{|reviews| reviews.viewer==self}
  end

 #helper method ----- calls 'reviews' method to get the movies
  def movie
    self.reviews.map{|reviews| reviews.movie}
  end


  #helper method  ------ checks if the movie instance sent as an argument is part of this viewer's reviewed movies
  def reviewed_movie(movie)
    self.movie.include?(movie)
    
  end

  #takes an argument of a movie and a rating, it creates a new review with for that movie with that rating if it doesn't exist yet
  #if it does it just changes the rating
  def rate_movie(movie,rating)
    if reviewed_movie(movie)
      self.reviews.each do |reviews| 
        if reviews.movie==movie
          reviews.rating=rating
        end
      end
      "Your rating for the '#{movie.title}' movie changed to #{rating}."
    else
      Review.new(self,movie,rating)
      "You added a rating of #{rating} for the '#{movie.title}' movie."
    end
  end
  
end
