class Landmark

    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city 
        @@all << self
    end

    def self.all 
        return @@all 
    end

    def self.find_by_city(city)
        Landmark.all.select do |landmark|
            landmark.city == city
        end
    end

end