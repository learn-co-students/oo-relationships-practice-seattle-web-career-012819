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
  Ride.all.map do |all_passenger|
    all_passenger.passenger
  end

end

   def rides #(driver_rides)
     #return driver_rides
     @@all << Ride.all
     # count =0
     # Ride.all.each do |all_drivers|
     #  count += 1
     # end
     # return "#{self} #{count} trips"
   end

   def self.mileage_cap(distance)
     driver_array = []
      Ride.all.map do |trips|
        if trips.distance > distance
          driver_array << trips.driver
        end
      end
      driver_array
   end
end
