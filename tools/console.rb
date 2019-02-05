require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#--LYFT EXERCISE--
# laura = Driver.new("laura")
# botham = Driver.new("botham")
# offset = Driver.new("offset")
# dwight = Driver.new("Dwight")
#
# kwame = Passenger.new("kwame")
# april = Passenger.new("April")
# jim = Passenger.new("Jim")
# paula = Passenger.new("paula")
#
# r1 = Ride.new(kwame, laura, 2.3)
# r2 = Ride.new(jim, offset, 5.3)
# r3 = Ride.new(paula, dwight, 8.9)
# r4 = Ride.new(april, botham, 10.4)
# r5 = Ride.new(jim, botham, 70.8)
# r6 = Ride.new(jim, laura, 60.4)
# r7 = Ride.new(april, offset, 90.6)
# r8 = Ride.new(kwame, botham, 97.8)

#--IMDB--
# nick = Actor.new("Nick")
# jon = Actor.new("Jon")
# audrey = Actor.new("Audrey")
# tina = Actor.new("Tina")
#
# python = Movie.new("Monty Python")
# ruby = Movie.new("Hidden Gems")
# bobby = Movie.new("Bob's Burgers")
#
# parks_and_rec = Show.new("Parks and Recreation")
# office = Show.new("The Office")
# bobs = Show.new("Bob's Burgers")
#
# jim = Character.new(jon)
# april = Character.new(audrey)
# laura = Character.new(tina)
# bob = Character.new(nick)
# linda = Character.new(audrey)
# arthur = Character.new(tina)
# april = Character.new(tina)
#
# a1 = Role.new(movie: bobby, character: bob)
# a2 = Role.new(movie: ruby, character: jim)
# a3 = Role.new(show: parks_and_rec, character: april)
# a4 = Role.new(movie: bobby, character: jim)
# a5 = Role.new(movie: bobby, character: april)
# a6 = Role.new(movie: ruby, character: april)


# --GYM--
# downtown = Location.new("Downtown")
# country = Location.new("Countryside")
# court = Location.new("Court")
#
# caleb = Trainer.new("Caleb")
# marc = Trainer.new("Marc")
# kyle = Trainer.new("Kyle")
#
# john = Client.new(name: "John", trainer: marc)
# tyler = Client.new(name: "Tyler", trainer: kyle)
# greg = Client.new(name: "Greg", trainer: caleb)
# joe = Client.new(name: "Joe", trainer: marc)
# dustin = Client.new(name: "Dustin")
# josh = Client.new(name: "Josh")
#
# wo1 = Workout.new(downtown, john)
# wo2 = Workout.new(country, tyler)
# wo3 = Workout.new(court, greg)
# wo4 = Workout.new(downtown, tyler)
# wo5 = Workout.new(downtown, john)
# wo6 = Workout.new(court, greg)
#
# dustin.assign_trainer(marc)
# josh.assign_trainer(kyle)

# --CROWDFUNDING EXERCISE--
# jason = User.new("Jason")
# tyler = User.new("Tyler")
# cal = User.new("Cal")
# neil = User.new("Neil")
# rohan = User.new("Rohan")
#
# fixing = Project.new(jason, 10000000)
# building = Project.new(tyler, 500000)
# damaged = Project.new(neil, 30000)
# totaled = Project.new(rohan, 1000000000)
#
# pledge1 = Pledge.new(cal, fixing, 3000)
# pledge2 = Pledge.new(tyler, damaged, 30000)
# pledge3 = Pledge.new(jason, fixing, 40000)
# pledge4 = Pledge.new(tyler, building, 100000)
# pledge5 = Pledge.new(neil, fixing, 10000)
# pledge6 = Pledge.new(tyler, fixing, 50)


# AIRBNB
# listing_one = Listing.new("beijing")
# listing_two = Listing.new("santiago de chile")
#
# guest_one = Guest.new("jose")
# guest_two = Guest.new("joe")
#
# trip_one = Trip.new(listing_one, guest_one)
# trip_two = Trip.new(listing_two, guest_two)
# trip_three = Trip.new(listing_two, guest_one)

#-----Bakery-----
bakery1 = Bakery.new("BakeOne")
bakery2 = Bakery.new("NuBake")

cake = Dessert.new("Cake", bakery1)
pie = Dessert.new("Pie", bakery2)
brownies = Dessert.new("Brownies", bakery1)
sundae = Dessert.new("Sundae", bakery1)

beet = Ingredient.new("Beet", cake, 300)
fog = Ingredient.new("Foggy Bottom", cake, 50)
eye = Ingredient.new("Eye of Newt", brownies, 10000)
water = Ingredient.new("Water", pie, 10000)
slug = Ingredient.new("Cave Slug", sundae, 250)
snail = Ingredient.new("Escargot", sundae, 200)


Pry.start
