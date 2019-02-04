class Ride
  @@all = []

  attr_reader :passenger, :driver, :distance

  def initialize(passenger: nil, driver: nil, distance: 0)
    @passenger = passenger
    @driver = driver
    @distance= distance

    @@all << self
  end

  def self.average_distance
    self.all.reduce(0){|sum, ride| sum + ride.distance}/self.all.count
  end

  def self.all
    @@all
  end

end
