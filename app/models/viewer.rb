class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end
  
  #returns an array of Review instances associated with the Viewer instance.
  def reviews
    Review.all.select { |review_inst| review_inst.viewer == self}
  end
#returns an array of Movie instances reviewed by the Viewer instance.
  def reviewed_movies
    self.reviews.map { |review_inst| review_inst.movie}
  end

#passing in argument of a movie (ex: m1)
#will go through review.all array for this user only with reviews method
#will check movie instances for this viewer, if @movie.title = m1, return true
  def reviewed_movie?(movie)
    reviewed_movies = self.reviews.map {|review_inst| review_inst.movie}
    reviewed_movies.include?(movie)
  end

  #passing movie and a rating as argument
  #if this viewer has NOT seen the movie that is being passed, created a new review.
    #so will iterate through review instances for this viewer and check if the viewer saw the movie
    #which we did in the above method so maybe can incorporate that
    # if above method is false then create a new review.
  #so if above method results to true, then allow for new rating in existing review
  #IDKKK 
  def rate_movies(movie, new_rating)
    viewer_rev = Review.all.select { |review_inst| review_inst.viewer == self}
    viewer_rev.map {|review_inst| review_inst.movie}
    viewer_rev.include?(movie) 
    if viewer_rev == true
      @rating = new_rating #not sure how to make this 
    else
      Review.new(self, movie, new_rating)
    end
  end

  
  def self.all
    @@all
  end
  
end

