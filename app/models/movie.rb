require 'pry'
class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews # returns an array of all the `Review` instances for the `Movie`.
    Review.all.select do |r|
      r.movie == self
    end
  end

  def reviewers #returns an array of all of the `Viewer` instances that reviewed the `Movie`.
    #goes into review . Goes into viewers and lists viewers who wrote reviews
    reviewers_usernames = []

    Review.all.each do |movie_reviewer|
    if movie_reviewer.movies = self && movie_reviewer.viewer = Viewer.username 
      reviewers_usernames << movie_reviewer.viewer
    end
    reviewers_usernames
  end

  def average_rating
    #go into review and gather all reviews for this movie
    #add reviews to an open array
    #add all values together / total number of ratings 
    avg_ratings = []
    Review.all.each do |r|
      r.movie == self 
      avg_rating << r.rating
    end
    avg_rating.average
  end

  def self.highest_rated #eturns the `Movie` instance with the highest average rating.
    #set counter
    #goes into review and finds the highest rating
    #set highest rating movie = highest_rated_movie
    highest_rating_counter = 0
    Review.all.each do |review|
      if review.rating. > highest_rating_counter
        highest_rating_counter = review.rating
      end
        highest_rating_counter += 1 #increments 
        return review.rating.movie
    end
  end
end
