# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Title for m1")
m2 = Movie.new("Title for m2")
m3 = Movie.new("Title for m3")

v1 = Viewer.new("User1")
v2 = Viewer.new("User2")
v3 = Viewer.new("User3")

r1 = Review.new(v1, m1, "5")
r2 = Review.new(v2, m2, "10")
r3 = Review.new(v3, m3, "1")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
