class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end
  def reviews
    Review.all.select{
      |review| review.movie == self
    }
  end
  def reviewers
    # all viewer inst reviewed movie* reviews
    reviews.map{|review| review.viewer}
  end
  def average_rating
    rating = 0
    #collect and add all rating together => rating += review.rating
    all_rating = reviews.collect{|review| rating += review.rating}
    #average =>
    all_rating/
  end
  def self.highest_rated
    #max_by
  end


end
