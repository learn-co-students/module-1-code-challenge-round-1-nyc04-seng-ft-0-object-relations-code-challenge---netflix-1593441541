class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select { |review_inst| review_inst.movie == self}
  end

  def reviewers
    self.reviews.map { |review_inst| review_inst.viewer}
  end

  def self.all
    @@all
  end

end
