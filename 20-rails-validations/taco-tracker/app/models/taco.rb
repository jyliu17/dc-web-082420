class Taco < ApplicationRecord

    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :price, presence: true
    validates :price, numericality: {less_than: 100, message: "%{value} is way too expensive for a taco"}
    validates :vegetarian, presence: true, inclusion: {in: [true, false], message: "%{value} is not true or false"}
    
    validate :tacos_dont_start_with_q

    belongs_to :restaurant, optional: true
    
    def tacos_dont_start_with_q 
        if name.downcase.starts_with?('q')
            errors.add(:name, "can't start with q")
        end
    end

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
