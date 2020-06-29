# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
####Viewers 
v1 = Viewer.new("Emely")
v2 = Viewer.new("Christian")
v3 = Viewer.new("Moncho")
### Movie
m1 = Movie.new("Pokemon 2000")
m2 = Movie.new("Beetle Juice")
m3 = Movie.new("Toy Story 2")

###Review
r1 = Review.new(v1, m1, 5)
r2 = Review.new(v2, m2, 4)
r3 = Review.new(v3, m3, 3)

#Attempted Deliverables upto Object Relatiobship methods. Unable to tests methods to confirm output. 

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
