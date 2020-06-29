class Review
    attr_accessor :viewer, :movie, :rating #ratingnumber
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

    def viewers  # `Viewer` instance associated with the `Review` instance
        Review.all.select do |mo|
               mo.viewer == self
            #binding.pry
        end
    end

    def movies
        Review.all.select do |mo|
               mo.movie == self
           # binding.pry
        end
    end


end
