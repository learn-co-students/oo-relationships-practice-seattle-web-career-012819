class MovieCard

  attr_accessor :movie, :character, :actor

  @@all = []

  def initialize(movie, character, actor)
    @movie = movie
    @character = character
    @actor = actor

    @@all << self
  end

def self.all
  @@all
end

end
