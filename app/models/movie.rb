class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def title
    @title
  end

  def self.all
    @@all
  end

end



#Movie.all
#returns an array of all the Movie
#instances that have been initialized