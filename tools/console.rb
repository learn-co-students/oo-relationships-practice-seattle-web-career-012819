require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob_driver = Driver.new("Bob")
pop_driver = Driver.new("Pop")
klop_driver = Driver.new("klop")

kay_passenger = Passenger.new("Kay")
hay_passenger = Passenger.new("Hay")
fay_passenger = Passenger.new("fay")

first_ride = Ride.new(bob_driver, kay_passenger, 35.5)
second_ride = Ride.new(pop_driver, hay_passenger, 150.5)
third_ride = Ride.new(bob_driver, kay_passenger, 130.5)
fourth_ride = Ride.new(pop_driver, kay_passenger, 38.5)
fifth_ride = Ride.new(klop_driver, fay_passenger, 138.5)
Pry.start
