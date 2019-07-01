class Listing
  attr_accessor :name, :guest, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city


    @@all << self

  end

  def self.all
    @@all
  end

  def guests
    Trip.all.select{|trip| trip.listing == self }
  end

  def trips
    Listing.all.select{|listing| listing.name == self.name}
  end

  def trip_count
    self.trips.count
  end

  def self.find_all_by_city(city)
    Listing.all.select{|listing| listing.city == city}
  end

  def self.most_popular
    Listing.all.sort_by{|listing| listing.trip_count}.last
  end

end
