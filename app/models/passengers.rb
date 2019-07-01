class Passenger

  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age

    @@all << self
  end

  def rides
    Ride.all.select{|ride| ride.passenger == self}
  end

  def drivers
    self.rides.map{|r| r.driver}
  end

  def total_distance
    self.rides.map{|r| r.distance}.reduce(:+)
  end

  def self.premium_members
    Ride.all.select{|ride| ride.passenger.total_distance > 100}.map{|ride| ride.passenger.name}.uniq
  end



  def self.all
    @@all
  end

end
