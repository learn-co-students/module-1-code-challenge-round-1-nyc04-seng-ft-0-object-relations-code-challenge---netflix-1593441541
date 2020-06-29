# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new('Avengers')
m2 = Movie.new('Black Panther')
m3 = Movie.new('Captain America')
m4 = Movie.new('Black Widow')

v1 = Viewer.new('Chris')
v2 = Viewer.new('Caitlin')
v3 = Viewer.new('Rocco')

v1.rate_movie(m1, 7)
v1.rate_movie(m2, 10)
v1.rate_movie(m3, 8)
v2.rate_movie(m1, 9)
v2.rate_movie(m2, 9)
v3.rate_movie(m3, 6)

r1 = Review.new(v2, m4, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
