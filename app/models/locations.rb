class Location
  attr_accessor :suburb

  @@all = []

  def initialize(suburb)
    @suburb = suburb

    @@all << self
  end

  def self.all
    @@all
  end

  def self.least_clients
    tally = Hash.new(0)

     LocationCard.all.map{|agreement| agreement.location.suburb}.each { |location|
       tally[location] +=1}
     tally.min_by{|k,v| v}
  end


end
