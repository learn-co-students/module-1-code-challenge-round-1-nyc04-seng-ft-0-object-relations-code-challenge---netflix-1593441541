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
    Review.all.map{ |review_instance| review_instance.viewer == self}
    #unable to test method to test output
  end
  
  def reviewed_movies
    binding.pry
    Review.all.map{ |review_instance| review_instance.viewer == self.viewer }
    #unable to test method to test output
  end


end
