class Driver
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select{|ride| ride.driver == self}
  end

  def passengers
    self.rides.map{|ride| ride.passenger}
  end

  def total_distance
    self.rides.inject(0) {|sum, ride| sum + ride.distance}
  end

  def self.mileage_cap(miles: 0.0)
    self.all.select{|driver| driver.total_distance >= miles}
  end

  def self.all
    @@all
  end
end
