class Guest

  @@all = []

  attr_accessor :name, :listing

  def initialize(name)
    @name = name


    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    Trip.all.select{|listing| listing.guest == self}
  end

  def trips
    Trip.all.select{|trip| trip.guest == self}
  end

  def trip_count
    self.trips.count
  end

  def self.find_all_by_name(name)
    Trip.all.select{|trip| trip.guest.name == name}
  end




end
