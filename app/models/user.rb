class User < ApplicationRecord
    has_many :user_goals
    has_many :logs
    has_many :goals, through: :user_goals
end
