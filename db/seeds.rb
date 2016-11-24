# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Achievement.destroy_all
# Challenge.destroy_all
# LifeGoal.destroy_all
Blog.destroy_all

zen = LifeGoal.where(name: "Be more zen").first_or_create
healthy = LifeGoal.where(name: "Live healthier").first_or_create
productive = LifeGoal.where(name: "Be more productive").first_or_create

plug = Challenge.where(name: "Unplug before 10", description: "Don't open up your laptop, switch of your phone or tablet after 10pm, read a book, talk to your roommates or call it an early night", life_goal: zen).first_or_create
laugh = Challenge.where(name: "Laugh everyday for 5 minutes", description: "Watch your favourite comedy series or call your friend and ask if they can tell you a good joke", life_goal: zen).first_or_create
yoga = Challenge.where(name: "Learn a yoga-routine", description: "learn a yoga-routine you can practise for the next 21 days", life_goal: zen).first_or_create
meditate = Challenge.where(name: "Meditate", description: "Take time to meditate for the next 21 days", life_goal: zen).first_or_create
grateful = Challenge.where(name: "Be grateful", description: "Pick one thing you're grateful for everyday, write it down in a notebook every night before you go to sleep", life_goal: zen).first_or_create
intention = Challenge.where(name: "Set an intention", description: "Set a positive intention for your day every morning before you leave the house", life_goal: zen).first_or_create

office = Challenge.where(name: "Clear your workspace", description: "Deal with a cluttered workspace once and for all, reorganize your office", life_goal: productive).first_or_create
focus = Challenge.where(name: "Have a single purpose focus", description: "Pick one thing and do that one thing—and only that one thing—better than anyone else ever could.", life_goal: productive).first_or_create
sleeps = Challenge.where(name: "Get plenty of sleep", description: "Sleep 8 hours per night minimum", life_goal: productive).first_or_create
no = Challenge.where(name: "Learn to say no", description: "Become the opposite of Jim Carrey in Yes Man", life_goal: productive).first_or_create
phone = Challenge.where(name: "Cancel out unnecessary phone time", description: "Turn of your push notifications", life_goal: productive).first_or_create
facebook = Challenge.where(name: "Don't use Facebook for 21 days", description: "Don't use Facebook for 21 days", life_goal: productive).first_or_create

sugar = Challenge.where(name: "No sugar for 21 days", description: "Take processed sugars out of your diet", life_goal: healthy).first_or_create
banana = Challenge.where(name: "Eat bananas", description: "bananas are superhealthy, monkeys also eat it.", life_goal: healthy).first_or_create
cook = Challenge.where(name: "Cook healthy recipes", description: "Choose 21 healthy recipes to cook for the next days", life_goal: healthy).first_or_create
walk = Challenge.where(name: "Take a walk on the wild side", description: "Take a half hour walk during lunch time", life_goal: healthy).first_or_create
alcohol = Challenge.where(name: "No alcohol for 21 days", description: "Don't drink alcohol for the next 21 days", life_goal: healthy).first_or_create

blog1 = Blog.where(title: "My Journey to Quitting Sugar", intro: "My journey with quitting sugar has been well worth the time and effort. Yes, for me this was a big effort. I didn’t seem to quit with the ease that some people say they have had.", content: "My journey with quitting sugar has been well worth the time and effort. Yes, for me this was a big effort. I didn’t seem to quit with the ease that some people say they have had.
I failed a few times, I would have a really bad week and just not be able to “hold out” any longer. I would end up binging on the foods I missed (or thought I missed!) and feel awful about myself. It would really be a cycle of start fresh, go through “life”, then have to start again and feel like the ability to quit was further away then before.
But I did it. I have done it and I live it. It no longer is a “thing” I do, or a “fad” that I am trying, but little decisions made through out my day, every single day. Basically it is life!
We are not perfect but I made a big effort to actually change the way I saw food and the way I reacted and then how I dealt with emotions. For me, this was an emotional journey through food. I worked out that when I was feeling moody or have had a bad day, my brain would fixate on something sweet to make me smile. It was like I needed just Something to make me feel good again since I couldn’t give myself that feeling without a hit of sugar. Now I am armed with the tools to deal with bad days, and if I want to splurge I am also armed with the safe recipes, which are also DELICIOUS, to not feel guilty or to really damage myself.
Now I live a low sugar diet, where I know what I am eating and I love it. I still have a piece of cake at my birthday or during special occasions I will have a few nibbles of the sweet stuff, but it is not every day and I certainly don’t feel the same way about sugar as I used to.
I am not perfect, I would love to meet someone who is, but I know that I am taking the steps to make my own life better. Most importantly the food I eat and the life I live is only for me and I want it to be a long and healthy one!").first_or_create

blog2 = Blog.where(title: "Do You Fall Asleep Meditating? 6 Simple Strategies To Help", intro: "Years ago, when I started to practice the art of meditation, I would regularly start to fall asleep meditating.", content: "Years ago, when I started to practice the art of meditation, I would regularly start to fall asleep meditating.

It began in yoga. I would lie on the floor in corpse pose (savasana) and start to drift off. When these times came, nothing would stop the sleepiness. Even if I was doing breathing exercises (pranayama).

I would actually start to fall asleep in the middle of a breath.

Day or night, rested or tired, any practice that was still or quiet could make me fall asleep. I just couldn’t stay awake.

So when I started meditating, I was afraid that I would fall asleep meditating too.

I hated falling asleep during meditation. I worried that I’d make sleeping noises or drool. I didn’t want people to see me swaying or jerking awake.

I wasn’t worried that others would judge me because I was so busy judging myself. I didn’t feel like I had control. And, I was sure my sleepiness made it obvious how little mastery of meditation I had.

For a while, I went to struggle with my sleepiness. I would hold myself rigid and tight. I regulated how open or closed my eyes were. I would position myself in wakeful poses and schedule my sessions for wakeful times of the day.

The result was that my meditation became about staying awake—not meditating.

Are You a Bad Meditator or Are You Just Tired?
fall asleep meditatingTwo things helped change my attitude about sleepiness in meditation.

The first revelation came in another yoga class. My teacher dared to suggest that if you fall asleep during corpse pose, sometimes it means you’re tired. That’s it—you’re just tired.

It doesn’t mean you’re a good or bad meditator. It doesn’t mean your mind is a shambles and you might as well give up. And it doesn’t necessarily mean you’re not enlightened (although maybe that could be argued).

It just means you’re tired.

He recommended that as a healthy, balanced choice, you take a nap instead of meditating.

Experiencing Sleepiness is Part of Meditating
My second revelation came when I started meditating with my eyes open. As I sat in group meditations, I saw how common it is to struggle with sleepiness. Everyone–even the experienced meditators–can start to fall asleep at one time or another.

Look around a room of meditators. You’ll see bobbing and swaying, shifting and jerking.

With this insight you can view sleepiness as part of the practice of meditating. It’s normal and common. And it’s bound to challenge you at some point.

So instead of fighting sleepiness or judging yourself for it, use these 6 strategies to make your meditation healthy and balanced.

How to Meditate When You are Sleepy
go-to-sleep1.  Get rest.
Ask yourself if you’re tired. If so, consider sleeping.

Maybe the healthiest, most balanced choice is to sleep. Not all sleepiness is caused by fatigue. However if yours is, get rest.

2. Meditate in a less sleepy environment.
Sometimes our body is set to go to sleep at certain times, in certain places, or in certain positions. These environmental cues trigger our body to sleep.

It’s hard fighting your body so work with it instead of against it.

If your meditation is sleepy in the morning, try meditating at night. If your meditation space is in your bedroom, try using the living room. Adjust the light so it’s not too dark.

Experiment with your posture. Is a chair better or a cushion? Is it better with back support or without?

Get rid of environmental cues that say “sleep now.” Meditate in a neutral place so your body doesn’t think it’s time for a nap.

3. Stop fighting sleepiness.
Examine your relationship with your sleepiness. Are you battling it, trying to fend it off, make it go away? Do you find it embarrassing? Do you judge yourself?

Be aware of your feelings about the sleepiness. Notice if you view sleepiness as a “problem that needs solving” or just an experience you’re having.

Notice your feelings without needing to do anything about them. Sometimes it’s useful to find strategies to manage your sleepiness. Other times, it’s more useful to just be sleepy.

4.  Ask your mentors and guides for advice.
Each tradition, lineage, or philosophy has their own take on sleepiness in meditation. Suggestions for coping range from energetic to practical.

Ask someone you trust for suggestions. Try the strategies that work with your meditation practice.

5. Meditate on the sleepy sensations.
As you begin to experience sleepiness, bring your awareness to the sensations. What do you feel in your eyes, chest, and stomach? How do your thoughts change?

Focus on the sleepy feelings. If you actually doze off, notice what it feels like when you come back awake.

Meditating on your sleepiness is challenging, especially if you have worked hard to fight it.  If your meditation becomes a struggle, try shifting your meditation to the sleepiness and away from it, back and forth. Don’t force yourself to focus on sleepiness.

6. Get your energy moving.
Like all activities, meditation can get in a rut and become dull. It can lose vitality.

Try changing your meditation routine. Break your session into several shorter ones. Stand up and move around. Do some Sun Salutations. If you have a physical meditation practice (like Tai-Chi), rotate your sitting practice with your physical one.

Freshen up your practice and get your blood moving.

Sleepiness is such a normal part of a meditation practice that it can almost be expected. Now when it shows up, I don’t view it as an impediment. Instead, I see it as another aspect of my meditative experience.

Letting go of my self-judgement lets me play with it so it’s no longer stressful.").first_or_create

blog3 = Blog.where(title: "Houseplants…The Ultimate Health Supplements", intro: "When considering a change in lifestyle for a healthier, more balanced you, many consider changing their diet, exercise routine, or supplement regimen. However, when it comes to health and wellness, one of the most life changing, health promoting modifications is actually the simplest…houseplants.", content: "When considering a change in lifestyle for a healthier, more balanced you, many consider changing their diet, exercise routine, or supplement regimen. However, when it comes to health and wellness, one of the most life changing, health promoting modifications is actually the simplest…houseplants.

Yes, Houseplants

Bringing plants into your home could be one of the best things you do for your health. In the age of the internet, becoming healthier can be one of the most confusing and overwhelming things we attempt. The infinite amounts of information, conflicting studies, and talking heads can make one give up the moment they attempt their new lifestyle. However, when it comes to the most reliable, affordable and agreed upon lifestyle choice, it’s houseplants.

Plants have become a staple of indoor decor for many, providing a green backdrop to the sometimes bleak apartment walls or design failings. However, many don’t realize the health benefits they provide, giving us a new lease on health without us knowing. From lowering depression and anxiety to improving air quality, increasing concentration and productivity and boosting immunity, plants have evolved into the ultimate health supplement. And they don’t cost us an arm and a leg either.

Improved Air Quality:

Today humans spend around 90% of their time indoors, where air is more polluted than the outside. Lucky for us, some of our favorite plants have the ability to clean our air. In the 1980’s, NASA studied around 30 plants and their air cleaning prowess. These special plants are able to clean out carcinogens such as formaldehyde and benzene and create a healthier space for you and your loved ones. Some of these plants include the Snake plant, Boston Fern, Chinese Evergreen, Peace Lily and Aloe.

Stress:

It’s been shown that plants have the power to improve our outlook as well as decrease stress. Participants in a 2008 study who had indoor plants in their hospital rooms reported less stress and a better outlook on their prognosis.

Healers:

Studies have shown that patients recovering from surgery who have a view of a garden or plants actually recover quicker than those who face a wall or have no windows overlooking plants and trees.

Immunity:

Although small, a Norwegian study done in 1998 found that workers had fewer complaints of illness such as a sore throat, cough, itchy and dry nose and coughing in offices which had plants.

Productivity:

More recently, it’s been shown that plants in the workplace boost productivity and morale, often by as much as 15%. If you want your co-workers to do more of their fair share of work, it’s time to get them a green gift.

Plants are more than just office or home decor, they provide us with a sense of well-being and provide health effects previously unknown. It makes sense, as we evolved with nature and are often attracted back to our roots. It’s often forgotten, in the age of skyrises and freeways, that we come from nature, and within nature we often feel our best. Perhaps we’re forgetting the ultimate health hack: nature.").first_or_create

blog4 = Blog.where(title: "Establishing a Home Yoga Practice", intro: "Yoga in America is booming. A 2016 report by Yoga Journal and Yoga Alliance reported that 36.7 million people practice yoga, up from 20.4 million in 2012, and 28 percent of all Americans having taken a yoga class at some point in their lives. As a result, the demand for yoga instructors has never been higher and increasing numbers of practitioners are becoming inspired to teach — a career that can be as challenging as it is fulfilling.", content: "Yoga in America is booming. A 2016 report by Yoga Journal and Yoga Alliance reported that 36.7 million people practice yoga, up from 20.4 million in 2012, and 28 percent of all Americans having taken a yoga class at some point in their lives. As a result, the demand for yoga instructors has never been higher and increasing numbers of practitioners are becoming inspired to teach — a career that can be as challenging as it is fulfilling.

In their new book The Art and Business of Teaching Yoga: The Yoga Professional’s Guide to a Fulfilling Career, yoga “teacher of teachers” Amy Ippoliti and wellness entrepreneur Taro Smith, PhD, build on their popular “90 Minutes to Change the World” online course for yoga professionals to offer instructors a road map for creating a career that sustains and inspires not only themselves, but their students as well.

We hope you’ll enjoy this short excerpt from the book, which offers powerful tips for fitting a home yoga practice into your busy schedule, which should prove helpful to both yoga teachers and practitioners alike.



Have you ever taken a yoga class when you could just tell that the teacher was not into it? Or have you been that teacher? A passionless teacher can’t inspire students. Fortunately, there is a remedy, and that is to get on your own yoga mat and meditation cushion. As the yogini Dana Trixie Flynn puts it, “Just as a concert musician must practice their instrument, a yoga teacher must practice on their mat.”

This doesn’t mean going to a workshop or retreat only once in a while — though that can be nice — and coming back inspired and enthusiastic. This is about continual refueling. It means getting on your yoga mat consistently, at home, in a class, or at a practice for teachers and advanced students.

This may seem obvious, but the majority of teachers we’ve polled complain that their single biggest challenge as a teacher is keeping up their own practice. If this is a problem for you, here are some ideas to get you rolling. If you’re practicing consistently already, you can skim this section, but you might consider helping to uplift the whole teaching community by organizing group practices that help others stay motivated too.

Establish — and Maintain — Your Home Practice
Having a practice of your own can be not only empowering but often incredibly creative and innovative. If you don’t continue to practice regularly in addition to teaching, your only source of inspiration for your teaching is the stale memory of a regular practice. Do whatever it takes to get yourself on your mat five to seven days a week, even if only for a short time. Put on your favorite music first thing in the morning, and get on your mat and just experiment with movement.

Vow to practice at least ten minutes a day, five to seven days a week. By committing to only ten minutes, you avoid putting pressure on yourself, and you’re more likely to stick to the resolution. If you start small, you will find yourself craving more time on the mat.

Create a dedicated space in your home for your practice. This will encourage you to practice at home more often. It doesn’t have to be anything special — and you certainly don’t want to put so much thought into it that the planning process prevents you from rolling out your mat! But when you put just enough energy into a space, it can become magnetic, drawing you onto the mat.").first_or_create


