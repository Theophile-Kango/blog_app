class Tag < ApplicationRecord
    has_many :taggins
    has_many :posts, through: :taggins
end
