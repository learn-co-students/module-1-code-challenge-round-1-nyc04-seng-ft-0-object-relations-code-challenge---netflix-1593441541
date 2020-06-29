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
    Review.all.select do |review|
      review.viewer == self
    end
  end
  
  # def reviews
  #   find_reviews.map do |reviews|
  #     reviews.review
  #   end
  # end

  def reviewed_movies
    self.reviews.map do |m|
      m.movie
    end
  end

  def reviewed_movie?(movie)
    if self.reviews.include?(movie)
      p "true"
    else
      p "false"
    end
  end


  def rate_movie(movie, rating)
    
    Review.new(self, movie, rating)
  end
end
