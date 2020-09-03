class Dog < Animal
    include Swims 

    def self.all_the_animals
        @@all
    end
    
end