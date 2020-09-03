class Cat < Animal
    include Swims 

    @@all_cats = []

    def initialize(name, color, floofiness)
        # super(name)
        puts "Call Cat initialize method"
        @species = "feline"
        @color = color 
        @floofiness = floofiness
        @@all_cats << self
    end

    def self.all 
        @@all_cats
    end


    def speak
        puts "I am a pretty #{@species} named #{self.name}"
        super()
    end

    def tell_a_secret
        secret
    end

    private

    def secret
        puts "It's a secret"
    end

end