class Guest
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def book_trip(location, listing)
        Trip.new(location, listing, self)
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
        #gives me an array of all of the trips that belong to this guest
    end

    def listings
        self.trips.map do |trip|
            trip.listing
        end
    end

    def trip_count
        self.listings.count
    end

    def self.pro_traveller
        Guest.all.select {|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        Guest.all.select {|guest| guest.name == name}
    end

    def self.all
        @@all
    end
end