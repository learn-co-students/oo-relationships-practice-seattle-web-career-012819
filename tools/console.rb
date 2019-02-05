require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# b1 = Bakery.new("JP")

# i1 = Ingredients.new("Egg", 10)
# i2 = Ingredients.new("Butter", 100)
# i3 = Ingredients.new("Milk", 150)
# i4 = Ingredients.new("Sugar", 300)

# d1 = Desserts.new("Pie", b1, [i1, i2, i3])
# d2 = Desserts.new("Cake", b1, [i2,i4])
# d3 = Desserts.new("Cookies", b1, [i1,i2,i3,i4] )
# d4 = Desserts.new("Waffle", b1,  [i4,i1] )


# g1 = Guests.new("Frank")
# g2 = Guests.new("Susan")
# g3 = Guests.new("Eileen")
# g4 = Guests.new("Jessica")

# l1 = Listings.new("Seattle")
# l2 = Listings.new("Atlanta")
# l3 = Listings.new("Miami")
# l4 = Listings.new("Seattle")

# t1 = Trips.new(l1, g1)
# t2 = Trips.new(l2, g1)
# t3 = Trips.new(l3, g3)
# t4 = Trips.new(l4, g4)

p1 = Passenger.new("Bob")
p2 = Passenger.new("Sally")
p3 = Passenger.new("Sue")
p4 = Passenger.new("Tilly")

d1 = Driver.new("Alex")
d2 = Driver.new("Josh")
d3 = Driver.new("Molly")
d4 = Driver.new("Greyson")

r1 = Ride.new(p1, d1, 2)
r2 = Ride.new(p1, d2, 3)
r3 = Ride.new(p2, d2, 3)
r4 = Ride.new(p3, d3, 4)
r1 = Ride.new(p4, d4, 105)



binding.pry
