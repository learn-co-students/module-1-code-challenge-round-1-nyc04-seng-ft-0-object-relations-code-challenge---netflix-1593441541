class Review
    @@all = []
    attr_accessor :viewer,:movie,:rating
    def initialize (viewer,movie,rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end


    def self.all
        @@all
    end

    #Review#viewer
    # is returned with attr_accessor
    
    #Review#movie
     # is returned with attr_accessor
      
end
