class LocationCard
  attr_accessor :contract, :location

  @@all = []

  def initialize(contract, location)
    @contract = contract
    @location = location

    @@all << self
  end

  def self.all
    @@all
  end 
end
