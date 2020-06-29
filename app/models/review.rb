class Review
    attr_reader :viewer, :movie, :rating

    @@all=[]

    def initialize(viewer,movie,rating)
        @viewer=viewer
        @movie=movie
        @rating=rating.to_f
        @@all<<self
    end

    def viewer=(viewer)
        @viewer=viewer
    end

    def movie=(movie)
        @movie=movie
    end

    def rating=(rating)
        @rating=rating
    end

    def self.all
        @@all
    end



end
