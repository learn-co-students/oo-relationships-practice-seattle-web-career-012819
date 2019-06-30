#### Bakery
## - #ingredients
#   - should return an array of ingredients for the bakery's desserts
# - #desserts
#   - should return an array of desserts the bakery makes
# - #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery
## - .all
#   - should return an array of all bakeries
# - #shopping_list
#   - should return a string of names for ingredients for the bakery
class Bakery
attr_accessor :name
  @@all = []
   def initialize(name)
     @name = name

     @@all << self
   end

   def self.all
     @@all
   end

   def ingredients
     self.desserts.collect do |i|
       i.ingredients
     end.flatten
   end

   def desserts
     Desserts.all.select do |d|
       d.bakery == self
     end
   end
   def average_calories
     #should return a number totaling the average number of calories for the desserts sold at this bakery
     total = 0
     count = 0
     self.ingredients.each do |i|
       total += i.cal_count
        count += 1
     end
     avg = total / count
   end

   def shopping_list
     self.ingredients.collect do |i|
       i.name
     end
   end

end #end of class
