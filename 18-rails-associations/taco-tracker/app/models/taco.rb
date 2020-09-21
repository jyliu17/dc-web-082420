class Taco < ApplicationRecord

    belongs_to :restaurant, optional: true
    
    def display_name
        return self.name.titlecase
    end

    def display_price
        return "$#{self.price}"
    end

    def display_veg
        return self.vegetarian ? "yes" : "no"
    end

    def self.vegetarian
        Taco.where(vegetarian: true)
    end

    def self.meat
        Taco.where(vegetarian: false)
    end
end
