require 'pry'
# petey = {"name": "Petey", "fluffiness": 8, "colors": ["black, white"]}

class Cat

    attr_accessor :name, :floofiness
    attr_writer :colors # def name=(name); def floofiness(floofiness)
    attr_reader :species

    @@natural_enemies = ["dogs", "people with allergies", "batman"] # class variable
    @@all_cats = []

    def initialize(name, floofiness, colors=[]) # this code will automatically run when you call Cat.new
        puts "creating a new cat"
        @name = name 
        @floofiness = floofiness
        @colors = colors
        @@all_cats << self # instance of the cat I am creating
    end

    def meow # instance method
        puts "Meow I am a beautiful kitty"
    end
    
    def colors 
        return @colors.join(" and ")
    end

    def introduce # petey.introduce
        # self == petey
        puts "Meow my name is #{self.name}. \ 
        I have a floofiness of #{self.floofiness}. \
        My colors are #{self.colors}." # self is Petey or Ella--whoever we called the method on
    end

    def say_hi_to_everyone
        Cat.all.each do |kat|
            if kat != self
                puts "Hey #{kat.name}, I'm #{self.name}"
            end
        end
        return nil
    end
    # def get_all_cats #doesn't make sense
    #     @@all_cats
    # end

    # class methods

    def self.is_the_best # Cat.is_the_best
        # self == Cat
        puts "Cats are the best"
    end

    def self.natural_enemies
        return @@natural_enemies.join(" and ")
    end

    def self.all # class method Cat.all
        return @@all_cats
    end

    def all # instance method petey.all ella.all

    end

    def self.floofiest
        all_cats = self.all
        all_cats.select do |cat|
            cat.floofiness > 5
        end
    end
     
    def self.all_names # ["Ella", "Petey", "Garfield"]
        # 0. Make an empty array
        # 0.5 Get all the cats
        # 1. Go through each cat
        # 2. Write down their name in an array
        names = []
        Cat.all.each do |kat|
            names << kat.name.upcase
        end
        return names

    end

end

# binding.pry
petey = Cat.new("Petey", 8, ["black", "white"])
# # binding.pry
ella = Cat.new("Ella", 10, ["black"])
garfield = Cat.new("Garfield", 2)
# Cat.is_the_best # "Cats are the best"

# write a class method to get all cats that have a floofiness of 5 or higher 
# hint:  Use Cat.all in your method
binding.pry
