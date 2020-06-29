# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#(title)
m1 = Movie.new("Movie1")
m2 = Movie.new("Movie2")
m3 = Movie.new("Movie3")

##(username)
v1 = Viewer.new("Viewer1")
v2 = Viewer.new("Viewer2")
v3 = Viewer.new("Viewer3")


#(viewer_inst, movie_inst, rating_num)
rev1 = Review.new(v1, m1, 10)
rev2 = Review.new(v1, m2, 5)
rev3 = Review.new(v2, m1, 9)
rev4 = Review.new(v3, m1, 5)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
