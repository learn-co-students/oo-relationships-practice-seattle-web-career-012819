class Driver
    @@all = []
    attr_reader :name

    def initialize(name: '')
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
        total = 0
        self.rides.each do |ride|
            total += ride.distance
        end
        total
    end

    def self.mileage_cap(distance)
        self.all.select {|driver| driver.total_distance > distance}
    end

    def self.all
        @@all
    end
end