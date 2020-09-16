class Taco < ApplicationRecord

    def display_name
        return self.name.titlecase
    end

    def display_price
        return "$#{self.price}"
    end

    def display_veg
        return self.vegetarian ? "yes" : "no"
    end
end
