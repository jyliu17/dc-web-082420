require 'pry'
# petey = {"name": "Petey", "fluffiness": 8, "colors": ["black, white"]}

class Cat

    def initialize(name, floofiness, colors=[]) # this code will automatically run when you call Cat.new
        puts "creating a new cat"
        @name = name 
        @floofiness = floofiness
        @colors = colors
        
        # introduce
    end

    # def set_name(name)
    def name=(new_name) # setter
        puts "setting the name"
        @name = new_name
    end


    # def get_name 
    def name # getter
        foo = "whatever" # local variable only accessible in this method
        return @name # instance variable accessible throughout the instance of the class
    end

    def floofiness=(new_floofiness)
        @floofiness = new_floofiness
    end
    
    def floofiness 
        return @floofiness
    end

    def introduce
        puts "Meow my name is #{@name}"
    end

    def colors=(colors_array)
        @colors = colors_array
    end

    def colors 
        return @colors.join(" and ")
    end

    def meow # instance method
        puts "Meow I am a beautiful kitty"
    end

    def species
        "feline"
    end
end

petey = Cat.new("Petey", 8, ["black", "white"])
ella = Cat.new("Ella", 10, ["black"])
# petey.name=("Petey")
# petey.name = "Petey" # same as above
# ella = Cat.new
# ella.name = "Ella"
# ella.colors = ["black"]

# petey.floofiness = 8
puts petey.name
puts petey.floofiness
puts petey.colors # "black and white"

puts ella.name

garfield = Cat.new("Garfield", 2)


# petey.colors = ["black", "white"]
# petey.meow
# petey.introduce
binding.pry