require 'pry'
class Review
    @@all = []
    attr_accessor :viewer, :movie, :rating
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
        self.class.all << self
    end

    # do i even need this?
    
    # def viewer
    #    Review.all.map do |rev|
    #         rev.viewer
    #     end
    # end


end
