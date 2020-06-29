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
      Reviews.all.map{|review_instnace| review_instance.movie == self }
    end

    def reviewers
      Reviews.all.map{|review_instance| review_instance == self}
    end


end
