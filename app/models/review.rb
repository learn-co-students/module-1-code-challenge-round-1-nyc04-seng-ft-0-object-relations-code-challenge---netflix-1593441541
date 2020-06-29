class Review

    attr_reader :movie, :viewer, :rating
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

    # this are unneccessary because of the attr_reader but I wasn't sure if I needed to include them because of the deliverables?
    
    # def viewer
    #     @viewer
    # end

    # def movie
    #     @movie
    # end

end
