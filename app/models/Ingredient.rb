class Ingredient

  attr_accessor :name, :dessert, :calories
  @@all = []

  def initialize(name, dessert, calories)
    @name = name
    @dessert = dessert
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    Bakery.all.select {|bakery| bakery.ingredients.include?(self)}
  end

  def self.find_all_by_name(ingredient)
    Ingredient.all.select {|instance| instance.name.downcase.include?(ingredient.downcase)}
  end

end
