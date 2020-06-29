class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def username
    @username
  end

  def self.all
    @@all
  end

  def reviews
    Review.select { |viewer_instance| }
    puts viewer_instance.username == Review.viewer
  end

  
end


#Viewer.all
#returns an array of all the Viewer 
#instances that have been initialized