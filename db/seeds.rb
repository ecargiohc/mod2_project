# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do 
#     User.create(name:@name.sample, username:@username.sample, goal:@goal.sample, description: "fdsbhjkbfaksd" )
# end
User.destroy_all
Goal.destroy_all
UserGoal.destroy_all

genevieve = User.create(name: "Genevieve", username: "gen", password: "aa")
catherine = User.create(name: "Catherine", username: "cat", password: "aa")
jared = User.create(name: "Jared", username: "jar", password: "aa")
asif = User.create(name: "Asif", username: "as", password: "aa")
joseph = User.create(name: "Joseph", username: "jt", password: "aa")
jpark = User.create(name: "Jpark", username: "jp", password: "aa")

diet = Goal.create(category: "diet")
fitness = Goal.create(category: "fitness")
language = Goal.create(category: "language")
arts = Goal.create(category: "arts")
productivity = Goal.create(category: "productivity")
spirituality = Goal.create(category: "spirituality")

ug1 = UserGoal.create({user: genevieve, goal: fitness, description: "exercise two days a week", goal_date: "10/01/2019"})
ug2 = UserGoal.create({user: catherine, goal: fitness, description: "get a blackbelt in taekwondo", goal_date: "12/31/2020"})
ug3 = UserGoal.create({user: jared, goal: fitness, description: "join the 1000lb club", goal_date:"12/25/2019"})
ug4 = UserGoal.create({user: asif, goal: language, description: "learn a new language", goal_date: "09/09/2020"})
ug5 = UserGoal.create({user: joseph, goal: arts, description: "learn to play the piccolo", goal_date: "09/09/2000"})
ug6 = UserGoal.create({user: jpark, goal: fitness, description: "lift heavier weights", goal_date: "11/11/2019"})

a1 = Achievement.create({user_goal: ug1, report: "it was rewarding"})
# UserStory.create(user: genevieve, usergoal, entry: "asdlfj", motto: "just fifteen minutes every day")
# UserStory.create(user: catherine, usergoal, entry: "zwqieoru", motto: "zmnxvc")
# UserStory.create(user: jared, usergoal, entry: "xzvniep", motto: "qweiopruwqe")
# UserStory.create(user: asif, usergoal entry: "qwropifsd", motto: "pqoweiru")
# UserStory.create(user: joseph, usergoal, entry: "dafghjask", motto: "us history yo")
# UserStory.create(user: jpark, usergoal, entry: "djfnfb", motto: "3iu4qty")

# Story.create(goal: fitness, userstory)
# Story.create(goal: arts, userstory)
# Story.create(goal: language, userstory)

puts "Seeds done."