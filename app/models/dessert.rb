class Desserts
  attr_accessor :name, :bakery
  @@all = []
  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    #return an array of ingredients for the dessert
    Ingredients.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

  def calories
#return a number totaling all the calories
#for all the ingredients included in that dessert
    total_calories =0
    ingredients.each do |ingredient|
      total_calories += ingredient.calory
    end
    total_calories
  end
 end #end of class
