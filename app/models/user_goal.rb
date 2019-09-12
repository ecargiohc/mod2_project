class UserGoal < ApplicationRecord
    belongs_to :user 
    belongs_to :goal
    # has_many :achievements
end
