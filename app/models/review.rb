class Review

    attr_accessor :viewer, :movie, :rating
 
    @@all = []

    def initialize (viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@all
    end

  
    # - `Review#viewer`
    # - returns the `Viewer` instance associated with the `Review` instance



end
