class Hospital < ActiveRecord::Base

    has_many :doctors
    
    # def doctors
    #     Doctor.all.select do |doctor|
    #         doctor.hospital_id == self.id 
    #     end
    # end
end