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
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients
    desserts.map {|dessert| dessert.ingredients}.flatten
  end

  def shopping_list
    ingredients.map {|ingredient| ingredient.name}.join(', ')
  end

  def average_calories
    totcal = ingredients.map {|ingredient| ingredient.calories}.reduce(:+)
    totcal / (desserts.size)
  end


end
