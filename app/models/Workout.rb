class Workout
  attr_reader :location, :client
  @@all = []

  def initialize(location, client)
    @location = location
    @client = client
    @@all << self
  end

  def self.all
    @@all
  end

end
