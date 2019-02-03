class Driver
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passengers
        self.rides.map {|ride| ride.passenger}
    end

    def total_distance
        distance = 0
        self.rides.each do |ride|
            distance += ride.distance
        end
        distance
    end

    def self.mileage_cap(distance)
        Driver.all.select {|driver| driver.total_distance > distance}
    end

    def self.all
        @@all
    end
end