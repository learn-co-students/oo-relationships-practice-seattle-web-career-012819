class Driver

  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age


    @@all << self
  end

  def rides
    Ride.all.select{|ride| ride.driver == self}
  end

        # before rides method was made
  # def passengers
  #   Ride.all.select{|ride| ride.driver == self}.map{|ride| ride.passenger.name}
  # end
        # after rides method was made
  def passengers
    self.rides.map{|ride| ride.passenger.name}.uniq
  end

  def total_distance
    self.rides.map{|r| r.distance}.reduce(:+)
  end

        # exceeded mileage in a single trip
  def self.mileage_cap(distance)
    Ride.all.select{|ride| ride.distance > distance}.map{|ride| ride.driver.name}
  end


        # exceed total mileage over all trips
  def self.total_mileage_cap(cap)
    Driver.all.select{|driver| driver.total_distance > cap}
  end


  def self.all
    @@all
  end

end
