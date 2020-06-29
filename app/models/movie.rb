class Movie
  attr_accessor :title

  #an array of movie objects
  @@all = []

  def initialize(title)
    @title = title
    #add self to @@all array
    self.class.all << self
  end

  #returns all movie objects
  def self.all
    @@all
  end

end
