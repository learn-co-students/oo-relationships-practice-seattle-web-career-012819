class Movie

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all <<  self
  end

  def self.all
    @@all
  end

  def movie_cards
    MovieCard.all.select { |movie_card| movie_card.movie == self }
  end

  def actors
    self.movie_cards.map { |movie_card| movie_card.actor }
  end

  def characters
    self.movie_cards.map { |movie_card| movie_card.character }
  end

  #most_actors
  #  - should return the movie which has the most actors in it.
  #  this is so the studio knows never to hire that director again because he/she makes expensive movies

  def self.most_actors
    @@all.sort_by { |movie| movie.actors.length}.last
  end

end
