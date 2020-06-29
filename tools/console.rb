
# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Movies title
m1 = Movie.new("I know what you did last summer")
m2 = Movie.new("Life is short")
m3 = Movie.new("Amazing")

#viewer username 
v1 = Viewer.new("zeynab2")
v2 = Viewer.new("James101")
v3 = Viewer.new("Ali_20")

#(viewer, movie, rating)
r1 = Review.new(v1, m2, 8)
r2 = Review.new(v3, m3, 4)
r3 = Review.new(v2, m1, 5)
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
