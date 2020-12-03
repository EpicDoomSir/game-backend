# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all
Prize.destroy_all
UserPrize.destroy_all

user1 = User.create(username: "bob", pin: 1234, total_points: 0, avatar: "https://scrumandkanban.co.uk/wp-content/uploads/2013/07/DavidLowe.jpg")
user2 = User.create(username: "taylor", pin: 4321, total_points: 0, avatar: "https://cdn.dribbble.com/users/199982/screenshots/4044699/furkan-avatar-dribbble.png")
user3 = User.create(username: "beth", pin: 1234, total_points: 0, avatar: "https://o0o0sm3y25-flywheel.netdna-ssl.com/wp-content/uploads/2019/08/7-Best-Sites-To-Create-Avatars-Of-Yourself.jpg")

game1 = Game.create(title: "memory", time: 120)

GameSession.create(user_id: user1.id, game_id: game1.id, score: 60)
GameSession.create(user_id: user2.id, game_id: game1.id, score: 90)
GameSession.create(user_id: user3.id, game_id: game1.id, score: 45)
GameSession.create(user_id: user1.id, game_id: game1.id, score: 27)
GameSession.create(user_id: user2.id, game_id: game1.id, score: 111)

prize1 = Prize.create!(name: "Ian Player Card", cost: 100, description: "Gain the clarity and omniscience of Ian's mind by obtaining this card!")
prize2 = Prize.create!(name: "Michelle Player Card", cost: 100, description: "Gain the humor and wit of Michelle's mind by obtaining this card!")
prize3 = Prize.create!(name: "Isabelle Player Card", cost: 100, description: "Gain the encouragement of Isabelle's mind by obtaining this card!")
prize4 = Prize.create!(name: "Greg Player Card", cost: 100, description: "Gain the sense of peace and calm of Greg's mind by obtaining this card!")
prize5 = Prize.create!(name: "Caryn Player Card", cost: 100, description: "Gain the speed and energy of Caryn's mind by obtaining this card!")


UserPrize.create!(user_id: user1.id, prize_id: prize1.id)
UserPrize.create!(user_id: user1.id, prize_id: prize3.id)
UserPrize.create!(user_id: user2.id, prize_id: prize1.id)
UserPrize.create!(user_id: user3.id, prize_id: prize4.id)
UserPrize.create!(user_id: user2.id, prize_id: prize2.id)