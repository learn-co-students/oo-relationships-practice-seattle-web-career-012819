class Ride
    @@all = []
    attr_reader :driver, :passenger, :distance

    def initialize(driver: nil, passenger: nil, distance: 0)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.average_distance
        total_distance = 0
        total_rides = 0
        self.all.each do |ride|
            total_distance += ride.distance
            total_rides += 1
        end
        total_distance / total_rides
    end

    def self.all
        @@all
    end
end
