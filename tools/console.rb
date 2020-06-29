# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

contact_movie = Movie.new("Contact")
spacejam_movie = Movie.new("Space Jam")
malcolm_x_movie = Movie.new("Malcolm X")

threecee = Viewer.new("threecee")
man = Viewer.new("The Man")

threecee_malcolmx_review = Review.new(threecee, malcolm_x_movie, 100)
threecee_contact_review = Review.new(threecee, contact_movie, 99)
threecee_spacejam_review = Review.new(threecee, spacejam_movie, 2)

man_malcolmx_review = Review.new(man, malcolm_x_movie, 1)
man_spacejam_review = Review.new(man, spacejam_movie, 69)

puts "\nReviews by #{threecee.username}:"
pp Review.find_reviews_by_viewer(threecee)

puts "\nReviews by #{man.username}:"
pp Review.find_reviews_by_viewer(man)

puts "\n#{spacejam_movie.title} Reviews:"
pp Review.find_reviews_by_movie(spacejam_movie)

puts "\n#{spacejam_movie.title} Reviewers:"
pp spacejam_movie.reviewers

puts "#{spacejam_movie.title} Average Rating #{spacejam_movie.average_rating}"
puts "#{malcolm_x_movie.title} Average Rating #{malcolm_x_movie.average_rating}"
puts "#{contact_movie.title} Average Rating #{contact_movie.average_rating}"


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
