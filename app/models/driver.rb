#Lyft exercises file
class Driver
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    self.rides.map do |pass|
      pass.passenger
    end
  end

   def rides
     Ride.all.select do |drive|
       drive.driver == self
     end
   end

   def self.mileage_cap(distance)
    driver_array = []
    Ride.all.each do |find_distance|
      if find_distance.distance > distance
        driver_array << find_distance.driver
      end
    end
    driver_array
   end
end
