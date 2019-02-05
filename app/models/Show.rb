class Show
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def characters
    Character.all.select {|character| character.show == self}
  end

  def actors
    characters.map {|character| character.actor}
  end

  def movies
    characters.map {|character| character.movie}
  end

  def on_the_big_screen
    movienames = Movie.all.map {|movie| movie.name}
    @@all.select {|show| movienames.include?(show.name)}

  end

  def self.on_the_big_screen
    movienames = Movie.all.map {|m| m.name}
    @@all.select {|show| movienames.include?(show.name)}
  end

end
