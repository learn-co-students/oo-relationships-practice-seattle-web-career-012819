class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def self.all 
        @@all 
    end

    def passengers
        rides.each do |ride|
            ride.passenger
        end
    end

    def rides 
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def self.mileage_cap(distance)
        total_ride = 0
        Ride.all.select do |ride|
            total_ride += ride.distance
            if total_ride > distance
                ride.driver
            end
        end
    end
end # end of class


# .mileage_cap(distance)
# takes an argument of a distance (float) and returns all drivers who have exceeded that mileage