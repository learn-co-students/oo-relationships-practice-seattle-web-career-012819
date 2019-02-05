class Ride

  attr_accessor :name, :driver, :passenger, :distance

  @@all = []

  def initialize(distance)
    @name = name
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    all_distances = @@all.map { |ride| ride.distance}
    all_distances.sum.fdiv(all_distances.size)
  end

end
