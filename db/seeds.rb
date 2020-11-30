# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
User.destroy_all
Post.destroy_all
Comment.destroy_all

# 30.times do 
#     User.create({
#       username: Faker::Name.name,
#       password: Faker::Hacker.name
#     })
#   end
  
  
#   10.times do
#     post = Post.create({
#       user_id: Faker::IDNumber.idnumber,
#       title: Faker::Hipster.name,
#       content: Faker::Hipster.paragraph,
#       (13..100).to_a.sample
#     })
  
#     (2..6).to_a.sample.times do 
#       Post.create({
#         title: Faker::Hipster.sentence(3),
#         content: Faker::Hipster.paragraphs(4),
#         likes: 0,
#         blogger: blogger,
#         destination: Destination.all.sample
#       })
#     end
#   end
