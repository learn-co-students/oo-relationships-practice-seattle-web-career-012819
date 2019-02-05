class ShowCard

  attr_accessor :show, :actor, :character

  @@all = []

  def initialize(show, actor, character)
    @show = show
    @actor = actor
    @character = character

    @@all <<  self
  end

  def self.all
    @@all
  end

end
