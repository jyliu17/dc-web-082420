class School

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def instructors
        Instructor.all.select do |instructor|
            instructor.school == self
        end
    end 

    # def add_instructor(instructor)
    #     self.instructors.push(instructor)
    # end

    # def change_instructor_name(wrong_name, right_name)
    #     # look at instructors for the wrong name
    #     # get the position
    #     # replace the item in that position (the wrong name)
    #     # with the right name
    # end
    
end