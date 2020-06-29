




class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.find do |viewer_instance|
      viewer_instance.viewer 
    end
  end
  def reviewed_movies
    Review.all.find do |review_instance|
      review_instance.movie
    end
  end

  def self.all
    @@all
  end
  
end
