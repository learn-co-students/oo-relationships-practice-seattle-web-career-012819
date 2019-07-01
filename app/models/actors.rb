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
    actor_hash = Hash.new(0)
     MovieCard.all.map{|card| card.actor} + ShowCard.all.map{|card| card.actor}.each { |actor|  actor_hash[actor] += 1 }

     actor_hash.keys.sort_by{|char| actor_hash[char]}.last
  end
end
