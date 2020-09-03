class Animal

    attr_reader :name

    @@all = []
    
    def initialize(name)
        puts "Called Animal Initialize method"
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def walk
        return "I'm going for a little walk."
    end

    def speak
        return "Hello my name is #{self.name}"
    end

end