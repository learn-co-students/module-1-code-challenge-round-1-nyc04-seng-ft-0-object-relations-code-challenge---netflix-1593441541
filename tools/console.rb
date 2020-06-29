# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("kg")
v2 = Viewer.new("Obama")
v3 = Viewer.new("Cardi B")

m1 = Movie.new("Coco")
m2 = Movie.new("Selena")
m3 = Movie.new("The Goonies")

r1 = Review.new(v1, m2, 9)
r2 = Review.new(v2, m3, 8)
r3 = Review.new(v3, m1, 10)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
