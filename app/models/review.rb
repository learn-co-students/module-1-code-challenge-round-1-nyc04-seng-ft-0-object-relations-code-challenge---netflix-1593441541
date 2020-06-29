class Review

    attr_reader :viewer, :movie, :rating

    @@all = [ ]

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end

    def rating
        @rating
    end

    def viewer
        @viewer
    end

    def movie
        @movie
    end

    def self.all
        @@all
    end

end
