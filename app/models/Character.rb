class Character
  attr_accessor :actor, :movie, :show

  @@all = []

  def initialize(actor)
    @movie = movie
    @show = show
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def most_appearances
    @@all.sort_by {|character| character.appearances.size}.last
  end

  def appearances
    Role.all.select {|appearance| appearance.character == self}
  end



end
