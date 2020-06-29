# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#MOVIE (title)

m1 = Movie.new("Bad Boys")
m2 = Movie.new("Legally Blonde")
m3 = Movie.new("Romeo & Juliet")

#VIEWER (username)

u1 = Viewer.new("cool_dude")
u2 = Viewer.new("dad_movies")
u3 = Viewer.new("mamama123")

# REVIEW (viewer, movie, rating)

r1 = Review.new(u1, m1, 7)
r2 = Review.new(u2, m2, 7)
r3 = Review.new(u3, m3, 7)

p r1



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
