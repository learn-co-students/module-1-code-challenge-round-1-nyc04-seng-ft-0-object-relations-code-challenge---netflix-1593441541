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

  #returns all the reviews for this movie instance
  def reviews
    Review.all.select{|reviews| reviews.movie==self}
  end
  
  #returns all the reviewers for this movie instance
  def reviewers
    self.reviews.map{|reviews| reviews.viewer}
  end

  #helper method  ---- returns an array with all the movie ratings for this movie instance
  def this_movie_ratings
    reviews.map{|reviews| reviews.rating}
  end

  #returns the average rating for this movie instance
  def average_rating
    if(this_movie_ratings.count > 0)
    avg_rating=self.this_movie_ratings.reduce(0){|total,ratings|total+=ratings}/self.this_movie_ratings.count
    avg_rating.round(1)
    else
      0
    end
  end

  #checks which movie has the highest average rating of them all
  def self.highest_rates
    self.all.max_by{|movie| movie.average_rating}
  end




end
