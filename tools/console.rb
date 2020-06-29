# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


m1 = Movie.new("Moonlight")
m2 = Movie.new("Florida Project")
m3 = Movie.new("Uncut Gems")

v1 = Viewer.new("BarbieDreamz")
v2 = Viewer.new("YigahSoFly")
v3 = Viewer.new("KevSlayAllDay")

r1 = Review.new(v1, m1, 10)
r2 = Review.new(v1, m2, 9)
r3 = Review.new(v2, m1, 8)
r4 = Review.new(v3, m3, 7)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
