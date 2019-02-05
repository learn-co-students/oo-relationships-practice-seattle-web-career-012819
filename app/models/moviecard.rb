class MovieCard

  attr_accessor :movie, :actor, :character

  @@all = []

  def initialize(movie, actor, character)
    @movie = movie
    @actor = actor
    @character = character

    @@all <<  self
  end

  def self.all
    @@all
  end

end
