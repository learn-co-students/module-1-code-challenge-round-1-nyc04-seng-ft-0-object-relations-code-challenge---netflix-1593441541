# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
viewer1 = Viewer.new("Horror_Lover")
viewer2 = Viewer.new("pink_puppy")
viewer3 = Viewer.new("filmFREAK101")

movie1 = Movie.new("Vampoholics")
movie2 = Movie.new("Was DaVinci an alien?")
movie3 = Movie.new("PANDEMIC")

review1 = Review.new( viewer1, movie1, 4 )
review2 = Review.new( viewer3, movie3, 4 )#same viewer
review3 = Review.new( viewer2, movie2, 10 )
review4 = Review.new( viewer3, movie1, 8 )#same viewer



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
