# .each - goes over each element in the iterable
# .map / .collect - puts the return value of the block for each element in a new array
# .find / .detect
# .select / .find_all

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


# print(first_two_letters_with_each)

# bang methods
my_name = "paul"
# my_name = my_name.upcase
my_name.upcase!
puts my_name

# Define a _method_ called get_names that takes the array of instructors and returns 
# an array of just the names.  Try it with an .each and with a .map
