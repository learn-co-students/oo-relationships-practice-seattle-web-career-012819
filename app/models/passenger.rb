require 'pry'

class Passenger
    @@all = []

    attr_reader :name

    def initialize(name: "borb")
      @name = name
      @@all << self
    end

    def rides
      Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
      self.rides.collect{|ride| ride.driver}
    end

    def total_distance
      self.rides.inject(0) {|sum, ride| sum + ride.distance}
    end

    def self.premium_members
      self.all.select do |passenger|
        passenger.total_distance >= 100
      end
    end

    def self.all
      @@all
    end
end
