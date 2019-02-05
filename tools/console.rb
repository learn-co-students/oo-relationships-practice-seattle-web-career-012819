require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# def air_bnb_stats
# # # #   AIR BNB
# # # # # g1 = Guest.new("Steve")
# # # # # g2 = Guest.new("Bob")
# # # # #
# # # # # l1 = Listing.new("myHotel", "Seattle" )
# # # # # l2 = Listing.new("anotherHotel", "LA" )
# # # # #
# # # # # t1 = Trip.new(g1,l1)
# # # # # t2 = Trip.new(g2, l2)
# # # # # t3 = Trip.new(g1, l2)
# # # # #     END AIR BNB
# #   end
#
# # def bakery
# # i1 = Ingredient.new( "milk", 100)
# # i2 = Ingredient.new( "chocolate", 400)
# #
# # b1 = Bakery.new("Scott's bakery")
# #
# #
# # d1 = Dessert.new("scotts dessert", b1, i1)
# # d2 = Dessert.new("ANother one", b1, i2)
# end


#  def lyft
# #   p1 = Passenger.new("Scott", 29)
# #   p2 = Passenger.new("Jenna", 30)
# #   p3 = Passenger.new("Steve", 22)
# #
# #
# #   d1 = Driver.new("Petey", 37)
# #   d2 = Driver.new("Pauley", 47)
# #   d3 = Driver.new("Joey", 27)
# #
# #   r1 = Ride.new(p1, d1, 40)
# #   r2 = Ride.new(p2,d2, 35)
# #   r3 = Ride.new(p2,d2, 100)
# #   r4 = Ride.new(p1,d1, 80)
# #   r5 = Ride.new(p3,d3, 20)
# #   r6 = Ride.new(p3,d3, 8)
# #   r7 = Ride.new(p1,d2, 42)
# #   r8 = Ride.new(p2,d3, 52)
# #   r9 = Ride.new(p1,d2, 90)
# #
# end


#   def imdb
#
#    #  movies   <- characters -> shows
#    # actors <- characters
#
#   a1 = Actor.new("Jimmy")
#   a2 = Actor.new("Suzey")
#
#   m1 = Movie.new("Some action movie")
#   m2 = Movie.new("A funny movie")
#   m3 = Movie.new("Friends")
#
#   s1 = Show.new("Friends")
#   s2 = Show.new("Coding show")
#
#   c1 = Character.new("Super Steve")
#   c2 = Character.new("Funny guy #4")
#   c3 = Character.new("Random #8")
#   c4 = Character.new("James")
#
#   mc1 = MovieCard.new(m1,c1, a1 )
#   mc2 = MovieCard.new(m2,c3, a2 )
#   mc3 = MovieCard.new(m1,c4, a1 )
#   sc1 = ShowCard.new(s2, c2, a2 )
#   sc1 = ShowCard.new(s2, c1, a1 )
# end

# def gym
#
# c1 = Client.new("Harry")
# c2 = Client.new("Ron")
# c3 = Client.new("Jimmy")
# c4 = Client.new("Sarah")
# c5 = Client.new("Chris")
#
#
# t1 = Trainer.new("Arnie")
# t2 = Trainer.new("Jessie")
# t3 = Trainer.new("Lann")
#
# l1 = Location.new("SLU")
# l2 = Location.new("Downtown")
#
# contract1 = Contract.new(c1, t1)
# contract2 = Contract.new(c2, t2)
# contract3 = Contract.new(c3, t2)
# contract4 = Contract.new(c4, t1)
# contract5 = Contract.new(c5, t3)
#
# lc1 = LocationCard.new(contract1, l1)
# lc2 = LocationCard.new(contract2, l2)
# lc3 = LocationCard.new(contract3, l1)
# lc4 = LocationCard.new(contract4, l2)
# lc5 = LocationCard.new(contract5, l1)
# end

Pry.start
