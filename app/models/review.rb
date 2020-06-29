class Review
    attr_reader :viewer, :movie, :rating

    #array of Review objects
    #keeps track of who made the review,rating, and the movie they watched,
    @@all = []
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        #adds object to @@all array
        self.class.all << self
    end

    #returns and array of Review objects
    def self.all
        @@all
    end

#   - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
end
