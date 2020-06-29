class Review
    #attr_accessor will allow us to see either viewer or movie associated with review instance
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

  
    



end
