class Driver

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    rides.map {|ride| ride.passenger}
  end

  def self.mileage_cap(distance)
    @@all.select {|driver| driver.total_distance > distance}
  end

  def total_distance
    rides.map {|ride| ride.distance}.inject(:+)
  end

  def self.all
    @@all
  end

end
