class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end
  
  #returns an array of Review instances associated with the Viewer instance.
  def reviews
    Review.all.select { |review_inst| review_inst.viewer == self}
  end
#returns an array of Movie instances reviewed by the Viewer instance.
  def reviewed_movies
    self.reviews.map { |review_inst| review_inst.movie}
  end

  def self.all
    @@all
  end
  
end
