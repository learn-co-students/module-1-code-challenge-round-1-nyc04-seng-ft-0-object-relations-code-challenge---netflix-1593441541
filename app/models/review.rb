class Review
  attr_accessor :rating
  attr_reader :user, :title
  @@all = []

  def initialize(user, title, rating)
    @user = user
    @title = title
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def return_rating
    self.rating
  end

  def viewer
    Viewer.all.find { |viewer| viewer == self.user }
  end

  def movie
    Movie.all.find { |movie| movie.title == self.title.title }
  end

  def update_review=(rating)
    @rating = rating
  end
end
