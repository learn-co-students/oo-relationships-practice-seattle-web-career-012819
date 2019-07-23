class Role
  attr_reader :actor, :character, :movie, :show

  @@all = []

  def initialize(movie: nil, show: nil, character:)
    @actor = actor
    @character = character
    @movie = movie
    @show = show
    @@all << self
  end

  def self.all
    @@all
  end
end
