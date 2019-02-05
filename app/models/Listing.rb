class Listing

  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def trip_count
    self.trips.count
  end

  def self.find_all_by_city(city)
    self.all.select {|listing| listing.city == city}
  end

  def self.most_popular
    sorted = self.all.sort_by {|listing| listing.trips.size}
    sorted.last
  end

end
