# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Achievement.destroy_all
Challenge.destroy_all
LifeGoal.destroy_all


zen = LifeGoal.create(name: "Be more zen")
healthy = LifeGoal.create(name: "Live healthier")
productive = LifeGoal.create(name: "Be more productive")

plug = Challenge.create(name: "Unplug before 10", description: "Don't open up your laptop, switch of your phone or tablet after 10pm, read a book, talk to your roommates or call it an early night", life_goal: zen)
laugh = Challenge.create(name: "Laugh everyday for 5 minutes", description: "Watch your favourite comedy series or call your friend and ask if they can tell you a good joke", life_goal: zen)
yoga = Challenge.create(name: "Learn a yoga-routine", description: "learn a yoga-routine you can practise for the next 21 days", life_goal: zen)
meditate = Challenge.create(name: "Meditate", description: "Take time to meditate for the next 21 days", life_goal: zen)
grateful = Challenge.create(name: "Be grateful", description: "Pick one thing you're grateful for everyday, write it down in a notebook every night before you go to sleep", life_goal: zen)
intention = Challenge.create(name: "Set an intention", description: "Set a positive intention for your day every morning before you leave the house", life_goal: zen)

office = Challenge.create(name: "Clear your workspace", description: "Deal with a cluttered workspace once and for all, reorganize your office", life_goal: productive)
focus = Challenge.create(name: "Have a single purpose focus", description: "Pick one thing and do that one thing—and only that one thing—better than anyone else ever could.", life_goal: productive)
sleeps = Challenge.create(name: "Get plenty of sleep", description: "Sleep 8 hours per night minimum", life_goal: productive)
no = Challenge.create(name: "Learn to say no", description: "Become the opposite of Jim Carrey in Yes Man", life_goal: productive)
phone = Challenge.create(name: "Cancel out unnecessary phone time", description: "Turn of your push notifications", life_goal: productive)
facebook = Challenge.create(name: "Don't use Facebook for 21 days", description: "Don't use Facebook for 21 days", life_goal: productive)

sugar = Challenge.create(name: "No sugar for 21 days", description: "Take processed sugars out of your diet", life_goal: healthy)
banana = Challenge.create(name: "Eat bananas", description: "bananas are superhealthy, monkeys also eat it.", life_goal: healthy)
cook = Challenge.create(name: "Cook healthy recipes", description: "Choose 21 healthy recipes to cook for the next days", life_goal: healthy)
walk = Challenge.create(name: "Take a walk on the wild side", description: "Take a half hour walk during lunch time", life_goal: healthy)
alcohol = Challenge.create(name: "No alcohol for 21 days", description: "Don't drink alcohol for the next 21 days", life_goal: healthy)
