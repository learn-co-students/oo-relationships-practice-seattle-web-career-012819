class Ingredient
    @@all = []
    attr_accessor :calories, :name, :bakery, :dessert

    def initialize(calories, name, bakery, dessert)
        @calories = calories
        @name = name
        @bakery = bakery
        @dessert = dessert
        @@all << all
    end

    def self.all
        @@all
    end
end