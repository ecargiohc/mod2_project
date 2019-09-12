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
Motto.destroy_all
Achievement.destroy_all
Log.destroy_all

# log1 = Log.create({user: genevieve, comment: c1, title: "blahhh", entry: "tired and excessively hungry", date: "12/09/2019"})

genevieve = User.create(name: "Genevieve", username: "gen", password: "aa")
catherine = User.create(name: "Catherine", username: "cat", password: "aa")
jared = User.create(name: "Jared", username: "jar", password: "aa")
asif = User.create(name: "Asif", username: "as", password: "aa")
joseph = User.create(name: "Joseph", username: "jt", password: "aa")
jpark = User.create(name: "Jpark", username: "jp", password: "aa")

selfaware = Goal.create({category: "Self-Awareness", link: "https://markmanson.net/self-awareness"})
awareness = Goal.create({category: "Awareness", link: "https://www.change-management-coach.com/social-awareness.html"})
time = Goal.create({category: "Time Management", link: "https://www.theexceptionalskills.com/time-management-skills/"})
performance = Goal.create({category: "Performance", link: "https://simplicable.com/new/performance-improvement"})
mastery = Goal.create({category: "Mastery", link: "https://hbr.org/2012/11/how-to-master-a-new-skill"})
tolerance = Goal.create({category: "Tolerance", link: "https://www.sunrisertc.com/distress-tolerance-skills/"})
relationships = Goal.create({category: "Relationships", link: "https://www.psychologytoday.com/us/blog/in-practice/201504/do-you-have-these-21-essential-relationship-skills"})
familyandfriends = Goal.create({category: "Family and Friends", link: "https://www.basicknowledge101.com/subjects/relationships.html"})
community = Goal.create({category: "Culture & Community", link: "https://www.lanecc.edu/affirmativeaction/cultural-compentency-common-skills"})
leadership = Goal.create({category: "Leadership", link: "https://simplicable.com/new/elements-of-leadership"})
resilience = Goal.create({category: "Resilience", link: "https://positivepsychology.com/resilience-skills/"})
diet = Goal.create({category: "Diet", link: "https://health.usnews.com/best-diet/best-diets-overall"})
fitness = Goal.create({category: "Physical Fitness", link: "https://www.livestrong.com/article/534321-five-types-of-fitness-training/"})
mental = Goal.create({category: "Mental Health", link: "https://www.alustforlife.com/mental-health/well-being/cultivating-mental-fitness"})
skill = Goal.create({category: "Skill", link: "https://www.coursera.org/browse/personal-development"})
hobbies = Goal.create({category: "Hobby", link: "https://wallethacks.com/cheap-frugal-fun-hobbies/"})
productivity = Goal.create({category: "Productivity", link: "https://www.bakadesuyo.com/2016/07/how-to-be-productive/"})
spirituality = Goal.create({category: "Spirituality", link: "https://www.goodnet.org/articles/8-simple-everyday-spiritual-practice-ideas"})

ug1 = UserGoal.create({user: genevieve, goal: fitness, description: "exercise two days a week", start_date: "10/31/2019", goal_date: "10/01/2019"})
ug2 = UserGoal.create({user: catherine, goal: fitness, description: "get a blackbelt in taekwondo", start_date: "10/31/2019", goal_date: "12/31/2020"})
ug3 = UserGoal.create({user: jared, goal: fitness, description: "join the 1000lb club", start_date: "10/31/2019", goal_date:"12/25/2019"})
ug4 = UserGoal.create({user: asif, goal: skill, description: "learn a new language", start_date: "10/31/2019", goal_date: "09/09/2020"})
ug5 = UserGoal.create({user: joseph, goal: skill, description: "learn to play the piccolo", start_date: "10/31/2019", goal_date: "09/09/2000"})
ug6 = UserGoal.create({user: jpark, goal: fitness, description: "lift heavier weights", start_date: "10/31/2019", goal_date: "11/11/2019"})

a1 = Achievement.create({user_goal: ug1, report: "it was rewarding"})

# m1 = Motto.create({phrase: "phrase1"})
# m2 = Motto.create({phrase: "phrase2"})
# m3 = Motto.create({phrase: "phrase3"})

10.times do
    motto = Motto.create({
      phrase: Faker::Quote.yoda
    })
end

# log1 = Log.create({user: genevieve, motto: motto, title: "blahhh", entry: "tired and excessively hungry", date: "12/09/2019"})
# log2 = Log.create({user: catherine, motto: motto, title: "blah2", entry: "log2", date: "12/02/2029"})
# log3 = Log.create({user: jared, motto: motto, title: "blahhh3", entry: "log3", date: "12/02/2010"})



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