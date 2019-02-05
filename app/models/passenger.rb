class Passenger
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def drivers
    driver_array = []
    Ride.all.each do |find_driver|
      driver_array  << find_driver.driver
    end
    return driver_array
  end

  def rides
    #passenger_array = []
    Ride.all.select do |all_passenger|
      #passenger_array << all_passenger.passenger
      all_passenger.passenger == self
    end

    #return passenger_array
  end

  def total_distance
    total_=0
    Ride.all.each do |total|
      total_ += total.distance
    end
    total_
  end

  def self.premium_members
    Ride.all.map do |miles|
      if miles.distance > 100
        miles.passenger
      end
    end
  end
end
