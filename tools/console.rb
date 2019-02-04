require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Vacations:

# house = Listing.new("house")
# apartment = Listing.new("apartment")
# condo = Listing.new("condo")

# derek = Guest.new("Derek")
# tim = Guest.new("tim")
# jose = Guest.new("jose")

# hawaii = Trip.new("hawaii", house, derek)
# california = Trip.new("california", apartment, tim)
# seattle = Trip.new("seattle", condo, jose)
# deleware = Trip.new("deleware", house, tim)


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

# driver_jon = Driver.new("Jon")
# driver_ted = Driver.new("Ted")
# driver_bob = Driver.new("Bob")

# passenger_angie = Passenger.new("Angie")
# passenger_kim = Passenger.new("Kim")
# passenger_cheryl = Passenger.new("Cheryl")

# ride1 = Ride.new(10, driver_bob, passenger_angie)
# ride2 = Ride.new(20, driver_ted, passenger_kim)
# ride3 = Ride.new(130, driver_jon, passenger_cheryl)
# ride4 = Ride.new(150, driver_bob, passenger_kim)



Pry.start

