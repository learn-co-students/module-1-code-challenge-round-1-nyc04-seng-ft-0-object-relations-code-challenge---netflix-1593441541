# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

avengers = Movie.new("Avengers")
spiderman = Movie.new("Spiderman")
ironman = Movie.new("Ironman")
spidey-verse = Movie.new("Into the Spidey-verse")

viewer1 = Viewer.new("someguy12")
viewer2 = Viewer.new("coolio2")
viewer3 = Viewer.new("badbitch3")
viewer4 = Viewer.new("moneylover99")





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
