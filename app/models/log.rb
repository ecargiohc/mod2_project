class Log < ApplicationRecord
    belongs_to :user_goal
    belongs_to :user
    has_many :comments
    #has_many :user_goals, through: :user
end
