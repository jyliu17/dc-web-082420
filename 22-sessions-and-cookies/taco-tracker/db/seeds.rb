# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Taco.destroy_all
Restaurant.destroy_all

def get_two_digit_price
    random = rand(1.0...10.0)
    return random.round(2)
end

def random_boolean
    rand() > 0.5
end

    
5.times {Restaurant.create(
                        name: Faker::Restaurant.name, 
                        city: Faker::Address.city_prefix + Faker::Address.city_suffix)}

restaurants = Restaurant.all

20.times {Taco.create(name: "#{Faker::Hipster.word} Taco", 
                      price: get_two_digit_price,
                      vegetarian: random_boolean,
                      restaurant: restaurants.sample)}