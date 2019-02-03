class Ride
    @@all = []
    attr_accessor :distance, :driver, :passenger

    def initialize(distance, driver, passenger)
        @distance = distance
        @driver = driver
        @passenger = passenger
        @@all << self
    end

    def self.average_distance
        total_distance = 0
        total_rides = 0
        Ride.all.each do |ride|
           total_distance += ride.distance
           total_rides += 1
        end
        total_distance.to_f / total_rides
    end

    def self.all
        @@all
    end
end