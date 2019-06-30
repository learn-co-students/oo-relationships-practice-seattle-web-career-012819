class Passenger
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def self.all
        @@all
    end

    def drivers
        rides.collect do |ride|
            ride.driver
        end
    end

    def rides 
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def total_distance
        total = 0.0
            self.rides.each do |ride|
                total += ride.distance
        end
        total
    end

    def self.premium_members
        Ride.all.select do |d|
            d.distance > 100
        end
    end
end # end of class

