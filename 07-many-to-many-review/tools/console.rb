require_relative '../config/environment.rb'

# create your variables and/or write any tests here

pat = Tourist.new("Pat")
jerry = Tourist.new("Jerry")
pat2 = Tourist.new("Pat")

louvre = Landmark.new("Louvre Museum", "Paris")
eiffel = Landmark.new("Eiffel Tower", "Paris")
parthenon = Landmark.new("Parthenon", "Athens")
mall = Landmark.new("Mall", "East Brunswick")

trip1 = Trip.new(pat, louvre)
trip2 = Trip.new(pat, eiffel)
trip3 = Trip.new(jerry, eiffel)
trip4 = Trip.new(jerry, parthenon)
trip5 = Trip.new(pat2, mall)

puts "Does a tourist know their name?"
puts pat.name == "Pat"

puts "Tourist.all returns all tourists?"
puts Tourist.all.include?(pat)

puts "Tourist.find_by_name can find a tourist?"
puts Tourist.find_by_name("Jerry") == jerry

puts "Landmark has a name and a city"
puts louvre.name == "Louvre Museum"
puts louvre.city == "Paris"

puts "Find by city returns all landmarks in that city"
puts Landmark.find_by_city("Paris").include?(louvre)
puts Landmark.find_by_city("Paris").length == 2
puts !Landmark.find_by_city("Paris").include?(parthenon)

puts "Trip knows its landmark and its tourist"
puts trip1.tourist == pat 
puts trip1.landmark == louvre

puts "Tourist knows their trips"
puts pat.trips.include?(trip1)
puts pat.trips.include?(trip2)

puts "Tourist knows their landmarks"
puts pat.landmarks == [louvre, eiffel]

puts "Tourist can visit a landmark"
pat.visit_landmark(parthenon)
puts pat.landmarks.include?(parthenon)

puts "Tourist knows all landmarks they've never visited"
puts pat2.never_visited.include?(parthenon)
puts pat2.never_visited.include?(louvre)

binding.pry


