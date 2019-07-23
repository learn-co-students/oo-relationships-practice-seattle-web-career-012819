require 'pry'

class Ingredient
    @@all = []
    attr_accessor :calories, :name, :bakery, :dessert

    def initialize(name, calories, bakery, dessert)
        @calories = calories
        @name = name
        @bakery = bakery
        @dessert = dessert
        @@all << self
    end

    def self.find_all_by_name(ingredient_name)
        Ingredient.all.select {|ingredient| ingredient.name.include?(ingredient_name)}

    end

    def self.all
        @@all
    end
end