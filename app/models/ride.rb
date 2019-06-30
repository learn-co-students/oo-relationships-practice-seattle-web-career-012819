class Ride
    attr_accessor :passenger, :driver, :distance
    @@all = []
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.average_distance
        count = 0
        total_trip_amount = 0
        @@all.each do |trip|
            total_trip_amount += trip.distance
            count += 1
        end
        (total_trip_amount / count)
    end

end #end of class

# .average_distance
# should find the average distance of all rides