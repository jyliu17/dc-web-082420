class User < ApplicationRecord
    has_many :favorites
    has_many :trees, through: :favorites

    def list_of_trees
        self.trees.pluck(&:common_name).join(", ")
    end
end
