class Ride
  attr_accessor :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance

    @@all << self

  end

  def self.all_distances
    Ride.all.map{|ride| ride.distance}
  end

  def self.average_distance
    Ride.all_distances.reduce(:+) / self.all_distances.count.to_f
  end

  def self.all
    @@all
  end


end
