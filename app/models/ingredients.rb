class Ingredient
  attr_accessor :ingredient, :calories

  @@all = []

  def initialize(ingredient, calories)
    @ingredient = ingredient
    @calories = calories


    @@all << self
  end

  def dessert
    Dessert.all.find{|dessert| dessert.ingredient == self}
  end

  def bakery
    Dessert.all.find{|dessert| dessert.bakery == self}
  end

  def find_all_by_name(name)

  end

  def self.all
    @@all
  end

end
