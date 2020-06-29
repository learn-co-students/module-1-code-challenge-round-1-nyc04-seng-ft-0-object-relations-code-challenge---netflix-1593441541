require 'pry'
# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Fast and the furious")
m2 = Movie.new("Twilight")
m3 = Movie.new("The Godfather")

r1 = Review.new("Sam", "Twilight", 5)
r2 = Review.new("Sunny", "The Godfather", 3)
r3 = Review.new("Sara", "Fast and the furious", 9)

v1 = Viewer.new("sundun225")
v2 = Viewer.new("lalapooze")
v3 = Viewer.new("fairshare")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
