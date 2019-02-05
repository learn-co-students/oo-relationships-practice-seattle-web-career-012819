require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Vacations:

house = Listing.new("house")
apartment = Listing.new("apartment")
condo = Listing.new("condo")

derek = Guest.new("Derek")
tim = Guest.new("tim")
jose = Guest.new("jose")

hawaii = Trip.new("hawaii", house, derek)
california = Trip.new("california", apartment, tim)
seattle = Trip.new("seattle", condo, jose)
deleware = Trip.new("deleware", house, tim)


#Bakery:

french_bakery = Bakery.new("French Bakery")
english_bakery = Bakery.new("English Bakery")

cake = Dessert.new("Cake", french_bakery)
brownie = Dessert.new("Brownie", english_bakery)

sugar = Ingredient.new("Sugar", 100, french_bakery, cake)
flour = Ingredient.new("Flour", 250, english_bakery, brownie)
vanilla = Ingredient.new("Vanilla", 50, french_bakery, cake)
brown_suger = Ingredient.new("Brown Sugar", 50, english_bakery, brownie)

#Lyft

driver_jon = Driver.new(name: "Jon")
driver_ted = Driver.new(name: "Ted")
driver_bob = Driver.new(name: "Bob")

passenger_angie = Passenger.new(name: "Angie")
passenger_kim = Passenger.new(name: "Kim")
passenger_cheryl = Passenger.new(name: "Cheryl")

ride1 = Ride.new(distance: 10, driver: driver_bob, passenger: passenger_angie)
ride2 = Ride.new(distance: 20, driver: driver_ted, passenger: passenger_kim)
ride3 = Ride.new(distance: 130, driver: driver_jon, passenger: passenger_cheryl)
ride4 = Ride.new(distance: 150, driver: driver_bob, passenger: passenger_kim)



Pry.start

