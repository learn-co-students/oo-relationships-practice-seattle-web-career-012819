require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
### Lyft model #############
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

########## Bakery Model################
cake_house = Bakery.new("Cake House")
bread_maker = Bakery.new("Bread Maker")

cupcake = Desserts.new("cup cake", cake_house)
bread = Desserts.new("Bread Dessert", bread_maker)
cupcake2 = Desserts.new("cup cake", cake_house)

butter = Ingredients.new("Butter", cupcake, 150)
wheat = Ingredients.new("Wheat", bread, 50)
butter2 = Ingredients.new("Butter", cupcake, 350)

Pry.start
