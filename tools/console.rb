# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


movie1 = Movie.new("Spider Man 99")
movie2 = Movie.new("LORD- Fellowship")

#person
viewer1 = Viewer.new("Meliodas")
viewer2 = Viewer.new("King")

#reviews made
review1 = Review.new(viewer1, movie1, 10)
review2 = Review.new(viewer1, movie2, 1000)
review3 = Review.new(viewer2, movie2, 1)

# puts movie1.title
# puts""
# puts viewer1.username
# puts""
# puts review1.rating
# puts""
# pp review1.viewer
# puts""
# pp review1.movie
# puts""
pp viewer1.reviews
puts""
pp viewer1.reviewed_movies
#`Review#viewer`
#  - return Viewr object not just the string

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
#binding.pry
0
