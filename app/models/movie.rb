class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    # Movie.all
    @@all
  end

  def change_title=(title)
    # updade title value
    @title = title
  end

  def reviews
    Review.all.select{ |reviews| reviews.movie == self}
  end

  def viewers
    reviews.map(&:viewer)
  end

  def average_rating
    rating = 0
    total = reviews.map{ |review| rating += review.rating }
    rating
    rating / total.length
   # movie.ratings.reduce(+:) / movie.ratings.count
  end

  def self.highest_rated
    self.all.max_by{|movie| movie.average_rating}
  end
  
  
end
