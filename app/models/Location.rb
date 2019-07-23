class Location
  attr_reader :address, :trainer
  @@all = []

  def initialize(address)
    @address = address
    @trainer = trainer
    @@all << self
  end

  def self.all
    @@all
  end

  def clients
    workouts = Workout.all.select {|workout| workout.location == self}
    workouts.map {|workout| workout.client}
  end

  def self.least_clients
    @@all.sort_by {|location| location.clients.size}.first
  end

end
