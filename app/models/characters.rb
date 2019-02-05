class Character

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_appearances
          #long version ... see actors for shortened version
    character_hash = {}
    all_characters = MovieCard.all.map{|card| card.character} + ShowCard.all.map{|card| card.character}

    all_characters.each do |character|
      if !character_hash[character]
        character_hash[character] = 1
      else
        character_hash[character] += 1
      end
    end
      character_hash.keys.sort_by{|char| character_hash[char]}.last
  end

end
