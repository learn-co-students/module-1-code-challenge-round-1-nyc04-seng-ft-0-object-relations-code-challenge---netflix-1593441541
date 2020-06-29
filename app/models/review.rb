class Review

  
  
    
    @@all = []
    attr_reader :viewer, :movie, :rating
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating 
        @@all << self
    end

    def rating
        Review.all.map do |review_instance|
            review_instance.rating
        end
    end

    def self.all
        @@all
    end

end
