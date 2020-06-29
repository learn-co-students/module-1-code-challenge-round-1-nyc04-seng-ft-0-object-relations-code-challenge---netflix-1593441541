class Review
    @@all = []
    attr_reader :viewer, :movie, :rating
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        save
    end
    def self.all
        @@all
    end
    def save
        self.class.all << save
    end

end
