require 'pry'

class Review

    #- `Review#viewer`
    #- returns the `Viewer` instance associated with the `Review` instance
  #- `Review#movie`
   # - returns the `Movie` instance associated with the `Review` instance
  
    
    @@all = []
    attr_reader :viewer, :movie, :rating
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating 
        self.class.all << self
    end

    def ratings
        Review.all.map do |review_instance|
            review_instance.rating
        end
    end

    def viewers
        Review.all.select do |review_instance|
            review_instance.viewer
        end
    end

    def movies
        Review.all.select do |review_instance|
            review_instance.movie
        end
    end

    def self.all
        @@all
    end

end
