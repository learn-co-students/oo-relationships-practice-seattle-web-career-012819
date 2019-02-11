class Ingredients
  attr_accessor :name, :calory, :dessert
  @@all = []
  def initialize(name, dessert, calory)
      @name = name
      @calory = calory
      @dessert = dessert
      @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    #return the bakery object for the bakery that uses that ingredient
    Bakery.all.select do |bakery|
      bakery.ingredient == self
    end
  end

  def self.find_all_by_name(ingredient)
    Ingredient.all.select do |ingred|
      ingred.name.downcase.include?(ingredient.downcase)
    end
  end
end #end of class
