class Movie

  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def number_of_actors
    MovieCard.all.select{|card| card.movie == self}.count
  end

  def self.most_actors
    MovieCard.all.sort_by{|card| card.movie.number_of_actors}[-1].movie
  end

end
