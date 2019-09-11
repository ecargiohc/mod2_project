class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :log
    has_many :user_goals, through: :log
end
