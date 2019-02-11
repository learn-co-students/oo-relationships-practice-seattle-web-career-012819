#Lyft exercises file
class Ride
  attr_accessor :driver, :passenger, :distance
  @@all =[]
  #@@distance = []
  def initialize(driver, passenger, distance)
    #@@distance << distance
    @driver = driver
    @passenger = passenger
    @distance =  distance
    @@all << self
  end

  def self.all
    @@all
  end

   def self.average_distance
     average = 0
     count = 0
     @@all.each do |find_distance|
       average += find_distance.distance
       count += 1
     end
  #   average = 0
  #   @@distance.each do |miles|
  #     average += miles
  #   end
     average / count
   end
end
