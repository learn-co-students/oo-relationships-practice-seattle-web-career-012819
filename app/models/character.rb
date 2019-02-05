class Character

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
    MovieCard.all.select { |movie_card| movie_card.character == self }
  end

  def movies
    self.movie_cards.map { |movie_card| movie_card.movie }
  end

  def show_cards
    ShowCard.all.select { |show_card| show_card.character == self }
  end

  def shows
    self.show_cards.map { |show_card| show_card.show }
  end

##### Character
#- #most_appearances
#  - should return which character of film/television appears in the most films or tv shows

  def self.most_appearances

    all_characters = MovieCard.all.map { |card| card.character } + ShowCard.all.map { |card| card.character }
    all_characters.max_by { |character| all_characters.count(character) }

    #this hash method below also works

    #char_hash = Hash.new(0)
    #all_characters.each {|character| char_hash[character] += 1}
    #char_hash.keys.sort_by {|character| char_hash[character]}.last




  end

end
