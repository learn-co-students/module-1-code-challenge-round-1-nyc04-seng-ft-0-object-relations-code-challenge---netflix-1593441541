require "pry"

class Review

    attr_reader :viewer, :movie
    attr_accessor :rating

    @@all = []
  
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end
  
    def self.all
      @@all
    end

    def self.find_reviews_by_viewer(viewer)
        @@all.select do |review_instance|
            review_instance.viewer == viewer
        end
    end

    def self.find_movies_reviewed_by_viewer(viewer)
        Review.find_reviews_by_viewer(viewer).map do |review_instance|
            review_instance.movie
        end
    end
    
    def self.find_reviews_by_movie(movie)
        @@all.select do |review_instance|
            review_instance.movie == movie
        end
    end

    def self.find_viewers_by_movie(movie)
        Review.find_reviews_by_movie(movie).map do |review_instance|
            review_instance.viewer
        end
    end
    
end
