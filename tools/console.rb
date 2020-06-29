# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# username
v1 = Viewer.new("Zeus_The_Mighty")

#title
m1 = Movie.new("Percy Jacson")

#viewer, movie, rating
r1 = Review.new(v1, m1, 5)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
