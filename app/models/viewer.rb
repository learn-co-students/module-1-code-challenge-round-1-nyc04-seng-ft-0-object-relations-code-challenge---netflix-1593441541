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

  def Viewer_reviews 
    @@all = []
  end

  def viewed_movies

  end
  def Viewer_reviewed_movie?(movie)
   

  end
  
end
