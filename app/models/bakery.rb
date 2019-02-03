class Bakery
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def ingredients
        Ingredient.all.select {|ingredient| ingredient.bakery == self}
    end

    def desserts
        self.ingredients.map do |ingredient|
            ingredient.dessert
        end
    end

    def average_calories
        total_calories = 0
        total_ingredients = 0
        self.ingredients.each do |ingredient|
            total_calories += ingredient.calorie_count
            total_ingredients += 1
        end
        total_calories.to_f/total_ingredients
    end

    def shopping_list
        list = ''
        self.ingredients.each do |ingredient|
           list += ingredient.ingredient_name + ', '
        end
        list.slice(0, list.length - 2)
    end

    def self.all
        @@all
    end
end