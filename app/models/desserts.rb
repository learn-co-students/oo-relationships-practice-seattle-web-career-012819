#### Desserts
  # - #ingredients
  #   - should return an array of ingredients for the dessert
  # - #bakery
  #   - should return the bakery object for the dessert
  # - #calories
  #   - should return a number totaling all the calories for all the ingredients included in that dessert
  # - .all
  #   - should return an array of all desserts
  class Desserts
    attr_accessor :name, :bakery, :ingredients
    @@all = []
     def initialize(name, bakery, ingredients =[])
       @name = name
       @bakery = bakery
       @ingredients = ingredients
       @@all << self
     end

     def self.all
       @@all
     end



  end #end of class
