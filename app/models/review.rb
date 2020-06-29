class Review
    @@all =[]
    attr_accessor :viewer, :movie, :rating
    def initialize(viewer, movie, rating = 0)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end
    def self.all
        @@all
    end
end
