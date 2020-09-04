class Doctor < ActiveRecord::Base

    belongs_to :hospital

    has_many :doctor_patients
    has_many :patients, through: :doctor_patients
    # def hospital
    #     hosp_id = self.hospital_id 
    #     return Hospital.find(hosp_id)
    #     # Hospital.find(self.hospital_id)
    # end
end