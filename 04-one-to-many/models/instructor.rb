class Instructor

    attr_accessor :name, :favorite_food, :school

    @@all = []

    def initialize(name, favorite_food, school)
        @name = name
        @favorite_food = favorite_food
        @school = school
        @@all.push(self)
    end

    def self.all 
        return @@all 
    end


end