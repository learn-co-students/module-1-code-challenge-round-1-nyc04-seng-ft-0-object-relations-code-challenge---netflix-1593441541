class Review
    attr_accessor :viewer, :movie, :rating
    @@all = []
        
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie 
        @rating = rating
        @@all << self
    end


    def self.all 
        @@all
    end

    def viewer
    Viewer.all.find{|viewers_instance| viewers_instance == self.viewer }
    end

    def movie 
        Movie.all.find{|movie_instance| movie_instance == self.movie}
    end

end
