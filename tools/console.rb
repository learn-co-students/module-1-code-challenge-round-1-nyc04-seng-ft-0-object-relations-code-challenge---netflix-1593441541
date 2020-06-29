# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("hackers")
m2 = Movie.new("the fountain")
m3 = Movie.new("one flew over the cuckoo's nest")
m4 = Movie.new("machuca")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
