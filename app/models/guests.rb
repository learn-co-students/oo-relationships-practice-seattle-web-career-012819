class Guests
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all 
        @@all 
    end

    def trips 
        Trips.all.select do |trip|
            trip.guest == self 
        end
    end

    def trip_count 
        self.trips.count
    end

    def listings
        self.trips.collect do |trip|
            trip.listing 
        end
    end

    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1
        end
    end
    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end
end # end of class







#### Guest
# - #listings
#   - returns an array of all listings a guest has stayed at
# - #trips
#   - returns an array of all trips a guest has made
# - #trip_count
#   - returns the number of trips a guest has taken
# - .all
#   - returns an array of all guests
# - .pro_traveller
#   - returns an array of all guests who have made over 1 trip
# - .find_all_by_name(name)
#   - takes an argument of a name (as a string), returns the all guests with that name