require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob_driver = Driver.new("Bob")
pop_driver = Driver.new("Pop")

kay_passenger = Passenger.new("Kay")
hay_passenger = Passenger.new("Hay")

first_ride = Ride.new(bob_driver, kay_passenger, 30.5)
second_ride = Ride.new(pop_driver, hay_passenger, 150.5)
Pry.start
