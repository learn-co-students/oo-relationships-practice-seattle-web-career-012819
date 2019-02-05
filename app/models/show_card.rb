class ShowCard

  attr_accessor :show, :character, :actor

  @@all = []

  def initialize(show, character, actor)
    @show = show
    @character = character
    @actor = actor

    @@all << self
  end

  def self.all
    @@all
  end


end
