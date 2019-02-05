class Dessert

  attr_accessor :bakery, :ingredient, :bakery_name, :name
  @@all = []

  def initialize(name, bakery, ingredient)
    @name = name
    @bakery = bakery
    @ingredient = ingredient

    @@all << self
  end

  def ingredients
    self.ingredient.ingredient
  end

  def find_bakery
    self.bakery.bakery_name
  end

  def calories
    self.ingredient.calories

  end


  def self.all
    @@all
  end


end
