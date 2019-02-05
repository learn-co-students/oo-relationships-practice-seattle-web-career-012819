class Actor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all <<  self
  end

  def self.all
    @@all
  end

  def characters
    self.movie_cards.map { |card| card.movie } + self.movie_cards.map { |card| card.movie }
  end

  def movie_cards
    MovieCard.all.select { |movie_card| movie_card.actor == self }
  end

  def show_cards
    ShowCard.all.select { |show_card| show_card.actor == self }
  end

  def movies
    self.movie_cards.map { |movie_card| movie_card.movie }
  end

  def shows
    self.show_cards.map { |show_card| show_card.show }
  end

  #### Actor
  #- .most_characters
  #  - should return which actor has the most different characters played. (probably meryl streep)

  def self.most_characters
    #binding.pry
    count_array = @@all.map { |actor| actor.characters.length}
    #max_count = count_array.max
    @@all.select { |actor| actor.characters.length == count_array.max}
  #  @@all.max_by { |actor| actor.characters.length}
  #  @@all.select { |actor| actor.}

    #can also do this:
    #@@all.sort_by { |actor| actor.characters.length}.last


  end



end
