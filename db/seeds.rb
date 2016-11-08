# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Challenge.destroy_all
LifeGoal.destroy_all


zen = LifeGoal.create(name: "Be more zen")
healthy = LifeGoal.create(name: "Live healthier")
productive = LifeGoal.create(name: "Be more productive")

plug = Challenge.create(name: "Plug out before 10", description: "Don't open up your laptop, switch of your phone or tablet after 10pm, read a book, talk to your roommates or call it an early night", life_goal: zen)
banana = Challenge.create(name: "Eat bananas", description: "bananas are superhealthy, monkeys also eat it.", life_goal: healthy)
Challenge.create(name: "Have a single purpose focus", description: "Pick one thing and do that one thing—and only that one thing—better than anyone else ever could.", life_goal: productive)

