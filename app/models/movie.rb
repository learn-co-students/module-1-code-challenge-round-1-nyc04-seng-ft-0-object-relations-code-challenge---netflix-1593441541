


- `Movie#average_rating`
- returns the average of all ratings for the `Movie` instance
- to average ratings, add all ratings together and divide by the total number of ratings.
- `Movie.highest_rated`
- returns the `Movie` instance with the highest average rating.


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

  def self.highest_rated
    Movie.all.find|movie_instance|
    movie_instance.max
  end

  def self.all
    @@all
  end

end
