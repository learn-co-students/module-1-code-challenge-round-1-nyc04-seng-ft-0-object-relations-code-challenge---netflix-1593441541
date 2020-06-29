# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
  
#title
m1 = Movie.new("Hustle and flow")
m2 = Movie.new("Pretty woman")
m3 = Movie.new("She's all that")

#:username

v1 = Viewer.new("10tigist")
v2 = Viewer.new("Prince3847")
v3 = Viewer.new("rockpaper3455")
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #

# :viewer, :movie, :rating #ratingnumber

r1 = Review.new(v1,m1,9)
r2 = Review.new(v2,m2,4)
r3 = Review.new(v3,m3,7)
r4 = Review.new(v1,m2,1)
binding.pry
0
