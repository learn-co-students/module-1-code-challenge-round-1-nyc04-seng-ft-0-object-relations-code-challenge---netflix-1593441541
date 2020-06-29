class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all # all the movie instances
    @@all
  end

  def titles  #returns all my movie titles in an array
     Movie.all.map do |mov|
      mov.title
    # binding.pry
     end
    end


def reviews
Review.all.select do |mi|
  mi.movie == self
  #binding.pry
end

def reviewers

  Review.all.select do |mi|
   mi.viewer == self

    end

   end

  end

   def average_rating
    
  new_one = Review.all.select do |mo|
      mo.rating
   end.sum/@@all.length
   end

  def self.highest_rated

    self.all.select.max_by do |mo|
         mo
         binding.pry
    end

  end



  

end