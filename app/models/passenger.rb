class Passenger
    @@all = []
    attr_reader :name
    
    def initialize(name: '')
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        total = 0
        self.rides.each do |ride|
            total += ride.distance
        end
        total
    end

    def self.premium_members
        self.all.select {|passenger| passenger.total_distance > 100}
    end

    def self.all
        @@all
    end
end