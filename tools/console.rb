require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob = Passenger.new(name: "bob")
snob = Passenger.new(name: "snobbob")
jared = Passenger.new(name: "Jared")

terry = Driver.new(name: "terry")
jon = Driver.new(name: "jon")
cheryl = Driver.new(name: "cheryl")

r1 = Ride.new(passenger: bob, distance: 30, driver: cheryl)
r2 = Ride.new(passenger: bob, distance: 60, driver: cheryl)
r3 = Ride.new(passenger: bob, distance: 37, driver: jon)
r4 = Ride.new(passenger: snob, distance: 2342, driver: terry)
r5 = Ride.new(passenger: jared, distance: 1, driver: cheryl)

Pry.start
