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
        Review.new.viewer(username)
    end

    def movie
        Review.new.movie(title)
    end


end
