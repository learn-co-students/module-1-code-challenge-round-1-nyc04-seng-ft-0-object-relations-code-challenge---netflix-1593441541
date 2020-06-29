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

u1 = Viewer.new("ZeroCool")
u2 = Viewer.new("Teflon")
u3 = Viewer.new("Barbi")
u4 = Viewer.new("Donut")
u5 = Viewer.new("Neo")

r1 = Review.new(u1,m1,100)
r2 = Review.new(u2,m2, 98)
r3 = Review.new(u3,m3, 99)
r4 = Review.new(u1,m2,97)
r5 = Review.new(u2,m3, 99)
r6 = Review.new(u3,m4, 96)
r7 = Review.new(u4,m1,95)
r8 = Review.new(u4,m2, 94)
r9 = Review.new(u4,m3, 93)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
