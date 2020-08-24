# .each - goes over each element in the iterable
# .map / .collect - puts the return value of the block for each element in a new array
# .find / .detect - take in a block that evaluates to a boolean (T/F) and returns first matching element
# .select / .find_all - take in a block that evaluates to a boolean (T/F) and returns array of all matching elements  

instructors = [
    {name: "Paul", role: "lead"},
    {name: "Shannon", role: "coach"},
    {name: "Matteo", role: "coach"}
]

# instructors.each do |instructor| 
#     puts "Hi my name is #{instructor[:name]}"
# end

first_two_letters = instructors.map do |instructor|
    instructor[:name][0...2]
end # [ "Pa", "Sh", "Ma"]

first_two_letters_with_each = []
instructors.each do |instructor|
    first_two_letters_with_each << instructor[:name][0...2]
end


# Define a _method_ called get_names that takes the array of instructors 
# and returns  an array of just the names.  Try it with an .each and with a .map

def get_names(instructor_array)
    name_array = []
    # instructor_array.each do |instructor|
    #     name_array << instructor[:name]
    # end
    instructor_array.each {|instructor| name_array << instructor[:name]}
    return name_array
end

def get_names_with_map(instructor_array)
    name_array = instructor_array.map {|inst| inst[:name]}
    return name_array
end

# x = p(get_names(instructors))
# print(x)
get_names(instructors)
# print(get_names_with_map(instructors))

def find_lead(instructor_array)
    instructor_array.find {|instr| instr[:role] == "lead"}
end

lead = find_lead(instructors)
# puts lead[:name]

def find_all_coaches(instructor_array)
    instructor_array.select {|instr| instr[:role] == "coach"}
end

coaches = find_all_coaches(instructors)
print get_names(coaches)