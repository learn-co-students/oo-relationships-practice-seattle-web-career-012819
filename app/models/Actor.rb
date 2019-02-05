class Actor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_characters
    @@all.sort_by {|actor| actor.characters.size}.last
  end

  def characters
    Character.all.select {|character| character.actor == self}
  end

  def take_role(name)
    Character.new(name, self)
  end

  def shows
    characters.map {|character| character.show}
  end

  def movies
    characters.map {|character| character.show}
  end

end
