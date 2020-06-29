class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select {|r| r.movie==self}
  end

  def reviewers
    self.reviews.map {|r| r.viewer}
  end

  def average_rating
    sum=0
    self.reviews.map do |r|
      sum+=r.rating
    end
    average=sum/(self.reviews.count)
  end

  def self.highest_rated
    self.all.max_by {|m| m.average_rating}
  end




  def self.all
    @@all
  end

end
