require 'pry'
class Review
    attr_reader :viewer, :movie, :rating
     @@all = []
        def initialize(viewer, movie, rating)
            @viewer = viewer
            @movie = movie
            @rating = rating
            @@all <self
        end

        def self.all
            @@all
        end
            
        def viewer
           Viewer.username = self.viewer
        end

        def movie
            Movie.title = self.movie
        end
end
