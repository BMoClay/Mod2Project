# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# 30.times do 
#     User.create({
#       username: Faker::Name.name
#     })
#   end
  
  
#   10.times do
#     post = Post.create({
#       user_id: User.all.sample.id,
#       title: Faker::Hipster.name,
#       content: Faker::Hipster.paragraph,
#       (13..100).to_a.sample
#     })
  
#     (2..6).to_a.sample.times do 
#       Comment.create({
#         user_id: User.all.sample.id,
#         comment: Faker::Hipster.sentence(3)
#       })
#     end
#   end


User.destroy_all
Post.destroy_all
Comment.destroy_all

User.create(username: "Tommy", password: "12345")
User.create(username: "Ben", password: "54321")

Post.create(user_id: User.first.id, title: "Olympic Gold", content: "Knowing that millions of people around the world would be watching in person and on television and expecting great things from him — at least one more gold medal for America, if not another world record — during this, his fourth and surely his last appearance in the World Olympics, and realizing that his legs could no longer carry him down the runway with the same blazing speed and confidence in making a huge, eye-popping leap that they were capable of a few years ago when he set world records in the 100-meter dash and in the 400-meter relay and won a silver medal in the long jump, the renowned sprinter and track-and-field personality Carl Lewis, who had known pressure from fans and media before but never, even as a professional runner, this kind of pressure, made only a few appearances in races during the few months before the Summer Olympics in Atlanta, Georgia, partly because he was afraid of raising expectations even higher and he did not want to be distracted by interviews and adoring fans who would follow him into stores and restaurants demanding autographs and photo-opportunities, but mostly because he wanted to conserve his energies and concentrate, like a martial arts expert, on the job at hand: winning his favorite competition, the long jump, and bringing home another Gold Medal for the United States, the most fitting conclusion to his brilliant career in track and field.")
Post.create(user_id: User.second.id, title: "Setting Goals", content: "Parents are supposed to push you past your goals, or at least, that’s what I always believed. I was raised in the generation of “you can do anything if you put your mind to it.” My parents did not follow that philosophy, and they saw little value in a formal education. It was their lack of passion that led me to my educational goals. From as far back as I can remember, I knew I didn’t want to follow in the footsteps of my parents, at least not when it came to work. My father had worked on the family farm all his life and my mother had been a housewife since graduation. They were both content with the simplicity of their lives and wanted the same for me. I remember my father telling me that college was “expensive and a waste of four years”.  I knew however, that I wanted a career in the city that would be more challenging than simple farm life could provide. The only way to make that possible would be through formal education and a college degree. While my parents may not understand the value of formal education, I know it is essential for my future. This has helped me immensely by making me realize that without strong parental support, I’m the only one who’s responsible for my own goals. In a way this has been the strongest source of motivation. And for that, I am forever grateful." )

Comment.create(user_id: User.first.id, post_id: Post.second.id, comment: "Great post! I love it!")