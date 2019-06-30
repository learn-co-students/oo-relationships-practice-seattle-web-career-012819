class Listings
    attr_accessor :city, :guests, :trips, :trip_count

    @@all = []

    def initialize(city)
        @city = city
        @guests = []
        @trips = []
        @trip_count = trip_count 
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.find_all_by_city(city)
        self.all.select do |l|
            l.city == city
        end
    end

    def self.most_popular
        count = 0
        name = nil 
        tally = Hash.new(0)
        Trips.all.each do |t|   
            tally[t.listing] += 1
            if tally[t.listing] > count 
                count = tally[t.listing]
                name = t.listing
            end 
        end
        name
    end
end # end of class

#### Listing
#1- #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips