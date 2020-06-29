class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select { |review_inst| review_inst.movie == self}
  end

  def reviewers
    self.reviews.map { |review_inst| review_inst.viewer}
  end

  #will use above method reviews, to get all review instances for this movie
  #will access rating
  #will add up all the ratings, then divide by total num of ratings
  def average_rating
    movie_ratings = self.reviews.map { |review_inst| review_inst.rating}
    movie_ratings.reduce(0) { |total, rating| total+=rating}/movie_ratings.count
  end

  #class method, so this will check through ALL movies
  #how do i call the above method? idk.. 
  #should call above method to get average ratings of all movies
  #compare those averages using max_by...
  def self.highest_rated
   all_ratings = Review.all.select { |review_inst| review_inst.rating}
   all_ratings.max_by { |ratings| all_ratings.count(ratings)} #i found this on google, and it works, but not sure i understand
  end

  def self.all
    @@all
  end

end


# class A
#   def instance_method
#     # do stuff
#   end

#   def self.class_method
#      a = A.new
#      a.instance_method
#   end
# end