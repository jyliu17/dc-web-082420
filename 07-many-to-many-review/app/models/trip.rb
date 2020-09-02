class Trip

    @@all = []

    def initialize(tourist, landmark)
        @tourist = tourist
        @landmark = landmark
        @@all << self
    end

    def tourist
        @tourist 
    end

    def landmark
        @landmark
    end

    def self.all 
        @@all 
    end

end