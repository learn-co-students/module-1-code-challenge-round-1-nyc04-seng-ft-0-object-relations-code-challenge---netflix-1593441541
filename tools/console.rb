# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Shawshank Redemption")
m2 = Movie.new("Princess Bride")
m3 = Movie.new("Frozen")

v1 = Viewer.new("sarah")
v2 = Viewer.new("paul")
v3 = Viewer.new("david")

# viewer, movie, rating

r1 = Review.new(v1, m1, 4)
r2 = Review.new(v1, m2, 3)
r3 = Review.new(v3, m2, 5)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
