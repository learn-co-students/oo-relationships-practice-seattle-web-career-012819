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

  def desserts
    #return an array of desserts the bakery makes
    Desserts.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def ingredients
    self.desserts.map do |dessert|
      dessert.ingredients #call the ingredients method on dessert
    end
  end

  def shopping_list
  #return a string of names for ingredients for the bakery
    ingredients.map do |ingredient|
      ingredient.name
    end
  end

  def average_calories
#return a number totaling the average number of calories
#for the desserts sold at this bakery
  count =0
  total_calories = 0
  Desserts.all.each do |cal|
    if cal.bakery == self
      count += 1 #look for how many desserts for this bakery
      total_calories += cal.calories #get the total calories
    end
  end
  total_calories / count.to_f
  end
end
