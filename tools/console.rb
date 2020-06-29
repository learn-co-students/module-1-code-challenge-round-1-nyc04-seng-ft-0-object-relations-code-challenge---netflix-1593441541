# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Revolutionary Road")
m2 = Movie.new("Black Swan")
m3 = Movie.new("Cloverfield")
m4 = Movie.new("Boyz N the Hood")

v1 = Viewer.new("FloRida")
v2 = Viewer.new("PopcornLova")
v3 = Viewer.new("GimmeOil")
v4 = Viewer.new("DasMySeat")

r1 = Review.new(v1, m1, 4)
r2 = Review.new(v2, m2, 5)
r3 = Review.new(v3, m3, 3)
r4 = Review.new(v4, m4, 5)








# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
