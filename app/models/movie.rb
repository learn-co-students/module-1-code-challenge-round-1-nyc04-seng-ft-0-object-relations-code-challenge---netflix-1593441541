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

  #returns an array of all the Review instances for the Movie.
  def reviews
    Review.all.select {|rev| rev.movie_inst == self}
  end
  
  #returns an array of all of the Viewer instances that reviewed the Movie.
  def reviewers 
    Review.all.select do |rev|
      if rev.movie_inst == self
        rev.viewer_inst
      end
    end
  end

  #helper method 
  def helper_method
    self.reviews.map {|rev| rev.rating_num}.count
  end
  #returns the average of all ratings for the Movie instance
  def average_rating
    self.reviews.map {|rev| rev.rating_num}.reduce(0){|sum, r| sum + r / helper_method}
  end

  #returns the Movie instance with the highest average rating.
  def self.highest_rated
    Review.all.map {|rev| rev.rating_num }

  end
  #array.max_by do |element|
  #element.field
end

end
