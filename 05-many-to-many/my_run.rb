require_relative "./do_now.rb"
require 'pry'
mcd = Restaurant.new("McDonalds")
bk = Restaurant.new("Burger King")

burger = Meal.new("Hamburger")
fries = Meal.new("French Fries")
milkshake = Meal.new("Milkshake")

puts "Restaurant knows its name?"
puts mcd.name == "McDonalds"

puts "Meal knows its name?"
puts burger.name == "Hamburger"

mcd.add_meal(burger)
mcd.add_meal(fries)
bk.add_meal(burger)



puts "Restaurant knows its meals?"
puts mcd.menu == [burger, fries]

milkshake.add_restaurant(mcd)

puts "Meal knows its restaurants"
puts milkshake.restaurants == [mcd]

binding.pry

# x = 5
# x = x + 10 # 15
# puts x