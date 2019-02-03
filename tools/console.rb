require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

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

# binding.pry 
# puts 'hey'

Pry.start

