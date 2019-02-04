class Dessert
    @@all = []
    attr_accessor :name, :bakery

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.dessert == self}
    end

    def calories
        total = 0
        self.ingredients.each do |ingredient|
            total += ingredient.calories
        end
        total
    end

    def self.all
        @@all
    end
end