# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Avengers")
m2 = Movie.new("Twitches")
m3 = Movie.new("Tangled")

v1 = Viewer.new("Amanda")
v2 = Viewer.new("Landa")

# :viewer, :movie, :rating
r1 = Review.new(v1,m1, 5)
r2 = Review.new(v2,m1, 3)
r3 = Review.new(v2,m3, 4)

v1.rate_movie(m1,4)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
