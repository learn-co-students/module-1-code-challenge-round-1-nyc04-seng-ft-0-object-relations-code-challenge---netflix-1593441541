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
    Review.all.select {|i| i.viewer == self}
  end

  def reviewed_movies
    reviews.map {|i| i.movie}
  end

  # def reviewed_movie?(movie)
  #
  # end


end
