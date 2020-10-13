class User < ApplicationRecord
    has_many :favorites
    has_many :trees, through: :favorites
end
