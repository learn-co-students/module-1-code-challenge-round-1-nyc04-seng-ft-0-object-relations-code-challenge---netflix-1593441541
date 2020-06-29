class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    save
  end

  def save
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
end
