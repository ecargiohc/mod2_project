class Achievement < ApplicationRecord
    belongs_to :user_goal
    has_many :users, through: :user_goals
end
