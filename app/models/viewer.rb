class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def usernames  #returns a usersname in an array
  Viewer.all.map do |vi|
    vi.username
  #binding.pry
  end
end

def reviews   #returns viewer instance reviews
 Review.all.select do |mi|
  mi.viewer ==self
  #binding.pry
 end
 
end

def reviewed_movies
Review.all.select do |mi|
  mi.movie ==self
  #binding.pry
end
end


def reviewed_movie?(movie)
  
     self.reviews.select do |mo| 
      if  mo.movie == movie
         true
      #binding.pry
        end
      end
 end


def rate_movie(movie, rating)

      if viewer.reviewed_movie?
       Review.new(movie,rating)

  else 

    
  end 

  #binding.pry
 end

end

