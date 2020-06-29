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

  def reviews
    Review.all.select {|review_array|review.viewer}
    #one viewer many reviews
    #for every one viewer it will have many reviews
    #trying to compare review to the viewer to get review array element
  end
  
end
