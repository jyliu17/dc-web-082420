class Planet < ApplicationRecord
    has_many :missions
    has_many :scientists, through: :missions

    # def missions
    #     Mission.all.select do |mission|
    #         mission.planet_id == self.id 
    #     end
    # end

    # def scientists
    #     self.missions.map do |mission|
    #         mission.scientist 
    #     end
    # end
end
