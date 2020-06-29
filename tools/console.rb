# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

eternal = Movie.new("Eternal Sunshine of the Spotless Mind")
parasite = Movie.new("Parasite")
midsommar = Movie.new("Midsommar")

anh = Viewer.new("anh3")
nancy = Viewer.new("nancy5")
henry = Viewer.new("henry5")

review_1 = anh.rate_movie(eternal, 10)
review_2 = anh.rate_movie(parasite, 9)
review_3 = anh.rate_movie(midsommar, 8)

review_4 = nancy.rate_movie(eternal, 5)
review_5 = nancy.rate_movie(parasite, 6)
review_6 = nancy.rate_movie(midsommar, 2)

review_7 = henry.rate_movie(eternal, 6)
review_8 = henry.rate_movie(midsommar, -8)
review_9 = henry.rate_movie(parasite, 12)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
