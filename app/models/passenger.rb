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

  def rides
    Ride.all.select { |ride| ride.passenger == self}
  end

  def drivers
    self.rides.map { |ride| ride.passenger}
  end

  def total_distance
    distance_array = self.rides.map {|ride| ride.distance}
    sum_distance = 0
    distance_array.each do |distance|
      sum_distance += distance
    end
    sum_distance
  end

  def self.premium_members
    @@all.map{ |passenger| passenger.name if passenger.total_distance > 100}
  end

end
