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


r1=Review.new(v1,m1,10)
r2=Review.new(v2,m1,4)
r3=Review.new(v5,m2,4)
r4=Review.new(v6,m1,1)
r5=Review.new(v4,m5,5)
r6=Review.new(v3,m1,10)
r7=Review.new(v1,m4,10)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
