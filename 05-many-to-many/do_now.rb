# Build out these classes and methods so that a restaurant can track the meals it serves, 
# and a Meal knows all the restaurants where it is served.  e.g., if McDonalds and Burger King
# both serve hamburgers and chicken sandwiches, `mcdonalds.meals` would include both hamburgers
# and chicken sandwiches, and `hamburger.restaurants` would include both McDonalds and Burger King

# menu = [] # global variable -- almost always evil

class Restaurant

    # @@menu = [] class variable--menu shared by _all_ restaurants (not helpful)

    def initialize(name)
        @name = name
        # @menu = [] # menu for a specific restaurant
    end

    def add_meal(meal) # mcd.add_meal(burger)
        # @menu << meal # pushes burger into mcd.menu
        # # meal.add_restaurant(self) # adds mcd (self) to meal's add_restaurant
        # meal.restaurants << self
        MealRestaurant.new(meal, self)
    end

    def name
        @name
    end

    def menu  # mcd.menu
        # return an array of all the meals served 
        # at this restaurant

        # look at all MealRestaurants
        all_join_records = MealRestaurant.all 
        # choose the ones for given restaurant (that called this method)
        this_restaurants_join_rows = all_join_records.select do |join_record|
            join_record.restaurant == self
        end
        # get the meals from the selected rows
        meals = this_restaurants_join_rows.collect do |join_record|
            join_record.meal 
        end
        return meals

        # MealRestaurant.all.select do |jr|
        #     jr.restaurant == self
        # end.collect do |selected_record|
        #   selected_record.meal
        # end
    end

end

class Meal

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def add_restaurant(new_restaurant)
        # @restaurants << new_restaurant
        # # new_restaurant.add_meal(self)
        # new_restaurant.menu << self # (self is the meal that called this method)
        MealRestaurant.new(self, new_restaurant)
    end

    def restaurants
        rows = MealRestaurant.all.select do |row|
            row.meal == self
        end
        rows.map do |row|
            row.restaurant
        end
    end

    def restaurant_names 
        self.restaurants.map {|rest| rest.name}
    end
end

class MealRestaurant # join table

    attr_reader :meal, :restaurant 

    @@all = []

    def initialize(meal, restaurant)
        @meal = meal 
        @restaurant = restaurant
        @@all << self
    end

    def self.all 
        @@all 
    end
end