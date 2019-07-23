class Movie
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.movienames
    @@all.map {|movie| movie.name}
  end

  def self.most_actors
    @@all.sort_by{|movie| movie.actors.size}.last
  end

  def characters
    Character.all.select {|character| character.movie == self}
  end

  def actors
    characters.map {|character| character.actor}
  end

  def shows
    characters.map {|character| character.show}
  end



end
