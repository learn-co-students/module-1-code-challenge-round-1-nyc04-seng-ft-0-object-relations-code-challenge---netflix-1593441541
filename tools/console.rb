# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("The Prestige")
m2 = Movie.new("Up")
m3 = Movie.new("Wall-E")

v1 = Viewer.new("John")
v2 = Viewer.new("Jane")
v3 = Viewer.new("Mark")

r1 = Review.new(v1, m1, 10)
v2.rate_movie(m2, 10)
v2.rate_movie(m1, 7)
v3.rate_movie(m2, 8)
v1.rate_movie(m1, 9)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
