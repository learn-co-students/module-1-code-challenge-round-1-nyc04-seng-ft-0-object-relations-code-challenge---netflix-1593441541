class Review
    attr_reader :viewer_inst, :movie_inst, :rating_num 
    @@all = []

    def initialize(viewer_inst, movie_inst, rating_num)
        @viewer_inst = viewer_inst
        @movie_inst = movie_inst
        @rating_num = rating_num

        @@all << self
    end

    #returns the rating for the Review instance
    def rating
        Review.all.map {|rev| rev.rating_num }
    end

    #returns the Viewer instance associated with the Review instance
    def viewer
        Review.all.select do |rev| 
            if rev == self 
                return rev 
            end
        end 
    end

    #eturns the Movie instance associated with the Review instance
    def movie 
        Review.all.select do |rev| 
            if rev == self 
                return rev.movie_inst
            end
        end 
    end

    def self.all 
        @@all 
    end


end
