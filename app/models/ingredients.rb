#### Ingredients
  # - #dessert
  #   - should return a dessert object for that ingredient
  # - #bakery
  #   - should return the bakery object for the bakery that uses that ingredient
  # - .all
  #   - should return an array of all ingredients
  # - .find_all_by_name(ingredient)
  #   - should take a string argument return an array of all ingredients that include that string in their name
  #     - .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
  #     - make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
  class Ingredients
    attr_accessor :name, :cal_count
    @@all = []
     def initialize(name, cal_count)
       @name = name
       @cal_count = cal_count
       @@all << self
     end

     def self.all
       @@all
     end

     def bakery
       self.dessert.bakery
     end

     def dessert
       Desserts.all.find do |d|
         d.ingredients.include?(self)
       end
     end

     def self.find_all_by_name(ingredient)

     end

  end #end of class
