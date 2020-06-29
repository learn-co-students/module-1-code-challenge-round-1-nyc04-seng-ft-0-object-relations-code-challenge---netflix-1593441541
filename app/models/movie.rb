class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title

    self.class.all << self
  end

  def self.all
    @@all
  end


  def Movie_reviews
    @@all << @rating 
  end 


 def Movie_reviewers
  @@all << @viewer
 end

 def Movie_average_rating
   
 end
  def Movie.highest_rated
    
  end
end
