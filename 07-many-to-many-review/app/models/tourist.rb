class Tourist

    attr_reader :name

    @@all_tourists = []

    def initialize(name)
        @name = name 
        @@all_tourists << self
    end
    
    def self.all 
        return @@all_tourists
    end

    def self.find_by_name(name)
        Tourist.all.find do |tourist|
            tourist.name == name
        end
    end

    def trips 
        # returns all the trips this tourist
        # has taken
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    def landmarks 
        self.trips.map do |trip|
            trip.landmark
        end
    end
    
    def visit_landmark(landmark)
        Trip.new(self, landmark)
    end

    def never_visited
        Landmark.all.reject do |landmark|
            self.landmarks.include?(landmark)
        end
    end

    # def name 
    #     @name 
    # end
end