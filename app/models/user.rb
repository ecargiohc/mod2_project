class User < ApplicationRecord
    has_many :user_goals
    has_many :goals, through: :user_goals
    # has_many :comments
    has_many :logs
    has_many :comments, through: logs
    # has_many :logs
end
#has_many :logs
#has_many :comments, through: logs