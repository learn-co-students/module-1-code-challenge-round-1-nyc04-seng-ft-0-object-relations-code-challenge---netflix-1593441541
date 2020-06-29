class Review
    attr_accessor :viewer, :movie, :rating

 def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
 end
 
 def self.all
    @@all
end

def review_viewer
    @viewer
end 

def viewer_review_movies
    
end 
end 