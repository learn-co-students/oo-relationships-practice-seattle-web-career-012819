class Bakery
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.bakery == self}
    end

    def desserts
        self.ingredients.find do |ingredient|
            ingredient.dessert
        end
    end

    def average_calories
        total_calories = 0
        total_desserts = 0
        self.ingredients.each do |ingredient|
            total_calories += ingredient.calories
            total_desserts += 1
        end
        total_calories / total_desserts
    end

    def shopping_list
        list = ''
        self.ingredients.each do |ingredient|
            list += ingredient.name + ', '
        end
        list.slice(0, list.length - 2)
    end

    def self.all
        @@all
    end
end