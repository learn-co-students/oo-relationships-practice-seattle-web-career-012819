class Ingredient
    @@all = []
    attr_accessor :ingredient_name, :calorie_count, :bakery, :dessert

    def initialize(ingredient_name, calorie_count, bakery, dessert)
        @ingredient_name = ingredient_name
        @calorie_count = calorie_count
        @bakery = bakery
        @dessert = dessert
        @@all << self
    end

    def self.find_all_by_name(ingredient_string)
        Ingredient.all.select {|ingredient| ingredient.ingredient_name.include?(ingredient_string)}
    end

    def self.all
        @@all
    end
end