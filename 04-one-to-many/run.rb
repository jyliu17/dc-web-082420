require 'pry'
require_relative "./models/school.rb"
require_relative "./models/instructor.rb"

flatiron = School.new("Flatiron")
yale = School.new("Yale")

paul = Instructor.new("Paul Nicholsen", "cereal", 
    flatiron)
shannon = Instructor.new("Shannon Nabors", "fried chicken", 
    flatiron)
matteo = Instructor.new("Matteo Ricci", "shrimp fried rice", 
    flatiron)
prof = Instructor.new("Professor Professorson", "lasagne", 
    yale)

# yale.add_instructor(prof)

# flatiron.add_instructor(paul)
# flatiron.add_instructor(shannon)
# flatiron.add_instructor(matteo)

puts matteo.school




binding.pry

