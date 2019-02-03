# create files for your ruby classes in this directory
require 'pry'

class Listing
    @@all = []
    attr_accessor

    def initialize(name)
        @name = name
        @@all << self
    end

    def book_trip(trip, guest)
        Trip.new(self, trip, guest)
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        self.trips.map do |trip| 
            trip.guest
        end
    end

    def self.find_all_by_city(city)
        Trip.all.select {|trip| trip.location == city}
    end

    def self.all
        @@all
    end
end
