# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1=Movie.new("Prestige")
m2=Movie.new("Inception")
m3=Movie.new("Interstellar")
m4=Movie.new("Memento")
m5=Movie.new("Tenet")
m6=Movie.new("Dunkirk")

v1=Viewer.new("DonatelloTHM")
v2=Viewer.new("JackS")
v3=Viewer.new("Barbz")
v4=Viewer.new("Karemsita")
v5=Viewer.new("FranDa")
v6=Viewer.new("Grater")







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
