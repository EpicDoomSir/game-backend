# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create(username: "bob", pin: 1234, total_points: 0)
user2 = User.create(username: "taylor", pin: 4321, total_points: 0)
user3 = User.create(username: "beth", pin: 1234, total_points: 0)

game1 = Game.create(title: "memory", time: 120)

GameSession.create(user_id: user1.id, game_id: game1.id, score: 60)
GameSession.create(user_id: user2.id, game_id: game1.id, score: 90)
GameSession.create(user_id: user3.id, game_id: game1.id, score: 45)
GameSession.create(user_id: user1.id, game_id: game1.id, score: 27)
GameSession.create(user_id: user2.id, game_id: game1.id, score: 111)

