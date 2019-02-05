class Bakery
attr_accessor :bakery_name
  @@all = []

  def initialize(bakery_name)
    @bakery_name = bakery_name

    @@all << self
  end

  def ingredients
    Dessert.all.select{|dessert| dessert.bakery == self}.map{|dessert| dessert.ingredient}

  end

  def desserts
  Dessert.all.select{|dessert| dessert.bakery == self}.map{|dessert| dessert}
  end

  def average_calories
    # count = self.desserts.count
    self.desserts.map{|dessert| dessert.calories}.reduce(:+) / self.desserts.count

  end

  def shopping_list
    self.desserts.map{|d| d.ingredient.ingredient}
  end

  def self.all
    @@all
  end

end
