require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#create movies
the_fast_and_furious = Movie.new("The Fast and The Furious")
xxx = Movie.new("XXX")
the_infiltrator = Movie.new("The Infiltrator")
breaking_bad_movie = Movie.new("Breaking Bad")
xxx_3 = Movie.new("XXX 3")


#create shows
breaking_bad_show = Show.new("Breaking Bad")
malcom_in_the_middle = Show.new("Malcom in the Middle")

#create actors
paul_walker = Actor.new("Paul Walker")
bryan_cranston = Actor.new("Bryan Cranston")
vin_diesel = Actor.new("Vin Diesel")

#create characters
dom = Character.new("Dom")
brian_spilner = Character.new("Brian Spilner")
robert = Character.new("Robert")
xander = Character.new("Xander")
heisenberg = Character.new("Heisenberg")
hal = Character.new("Hal")


#create movie cards
MovieCard.new(the_fast_and_furious, vin_diesel, dom)
MovieCard.new(the_fast_and_furious, paul_walker, brian_spilner)
MovieCard.new(the_infiltrator, bryan_cranston, robert)
MovieCard.new(xxx, vin_diesel, xander)
MovieCard.new(xxx_3, vin_diesel, xander)

#create show cards
ShowCard.new(breaking_bad_show, bryan_cranston, heisenberg)
ShowCard.new(malcom_in_the_middle, bryan_cranston, hal)


Pry.start
