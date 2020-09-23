class Scientist < ApplicationRecord
    has_many :missions
    has_many(:planets, {through: :missions})

    validates :name, presence: true, uniqueness: true
    validates :field_of_study, presence: true

    def self.abc_order
        return Scientist.order(:name)
    end
end
