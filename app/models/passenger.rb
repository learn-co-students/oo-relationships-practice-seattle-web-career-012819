class Passenger
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map {|ride| ride.driver}
    end

    def total_distance
        distance = 0
        self.rides.each do |ride|
            distance += ride.distance
        end
        distance
    end

    def self.premium_members
        Passenger.all.select {|passenger| passenger.total_distance >= 100}
    end

    def self.all
        @@all
    end
end