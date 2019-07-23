class Ride

  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(passenger, driver, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    distances = self.all.map {|ride| ride.distance}
    distances.inject(:+) / distances.size
  end
end
