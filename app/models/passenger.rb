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
    # driver_array = []
    # Ride.all.each do |find_driver|
    #   if find_driver.passenger == self
    #     driver_array  << find_driver.driver
    #   end
    # end
    # return driver_array
    self.rides.map do |drive|
      drive.driver
    end
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
      if total.passenger == self
          total_ += total.distance
      end
    end
    total_
  end

  def self.premium_members
    passenger_array = []
    Ride.all.each do |miles|
      if miles.distance > 100
        passenger_array << miles.passenger
      end
    end
    passenger_array
  end
end
