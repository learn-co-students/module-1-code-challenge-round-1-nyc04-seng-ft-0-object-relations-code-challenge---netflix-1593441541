class Review
    attr_accessor :viewer, :movie, :rating
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
    
    #returns the `Viewer` instance associated with the `Review` instance
    def self.viewer
        self.all.select {|r| r.viewer}
    end

    #returns the `Movie` instance associated with the `Review` instance
    def self.movie
        self.all.select {|r| r.movie}
    end
end
