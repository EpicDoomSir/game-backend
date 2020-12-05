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

user1 = User.create(username: "bob", pin: 1234, total_points: 0, avatar: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F5%2F55%2FXbox_NXE_avatar.png&f=1&nofb=1")
user2 = User.create(username: "taylor", pin: 1234, total_points: 0, avatar: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fassets1.ignimgs.com%2Fthumbs%2FuserUploaded%2F2017%2F6%2F16%2Fxboxavatars-1497634732199_1280w.jpg&f=1&nofb=1")
user3 = User.create(username: "beth", pin: 1234, total_points: 0, avatar: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi1.wp.com%2Fnofiredrills.com%2Fwp-content%2Fuploads%2F2016%2F10%2Fmyavatar.png%3Fresize%3D400%252C400%26ssl%3D1&f=1&nofb=1")
user4 = User.create(username: "Eitan", pin: 1234, total_points: 500, avatar: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.pngarts.com%2Ffiles%2F3%2FCool-Avatar-Transparent-Image.png&f=1&nofb=1")
user5 = User.create(username: "Mary", pin: 1234, total_points: 500, avatar: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimage.shutterstock.com%2Fimage-vector%2Fbeautiful-blond-girl-magnificent-curly-260nw-532660309.jpg&f=1&nofb=1")

game1 = Game.create(title: "memory", time: 120)

GameSession.create(user_id: user1.id, game_id: game1.id, score: 60)
GameSession.create(user_id: user2.id, game_id: game1.id, score: 90)
GameSession.create(user_id: user3.id, game_id: game1.id, score: 45)
GameSession.create(user_id: user1.id, game_id: game1.id, score: 27)
GameSession.create(user_id: user2.id, game_id: game1.id, score: 111)

prize1 = Prize.create!(name: "Ian Player Card", cost: 100, description: "Gain the clarity and omniscience of Ian's mind by obtaining this card!", image_url: "https://ca.slack-edge.com/T02MD9XTF-UD54WDGFP-ca9e4fa7fa57-512")
prize2 = Prize.create!(name: "Michelle Player Card", cost: 100, description: "Gain the humor and wit of Michelle's mind by obtaining this card!", image_url: "https://ca.slack-edge.com/T02MD9XTF-U011WKXUXTK-5ce7733b96e2-512")
prize3 = Prize.create!(name: "Isabelle Player Card", cost: 100, description: "Gain the encouragement of Isabelle's mind by obtaining this card!", image_url: "https://ca.slack-edge.com/T02MD9XTF-UC6H2GLG0-5df96d5f1ca6-512")
prize4 = Prize.create!(name: "Greg Player Card", cost: 100, description: "Gain the sense of peace and calm of Greg's mind by obtaining this card!", image_url: "https://ca.slack-edge.com/T02MD9XTF-U8H2RA3C1-643c8ce562ef-512")
prize5 = Prize.create!(name: "Caryn Player Card", cost: 100, description: "Gain the speed and energy of Caryn's mind by obtaining this card!", image_url: "https://learning.flatironschool.com/courses/1270/files/66136/preview")


UserPrize.create!(user_id: user1.id, prize_id: prize1.id)
UserPrize.create!(user_id: user1.id, prize_id: prize3.id)
UserPrize.create!(user_id: user2.id, prize_id: prize1.id)
UserPrize.create!(user_id: user3.id, prize_id: prize4.id)
UserPrize.create!(user_id: user2.id, prize_id: prize2.id)
UserPrize.create!(user_id: user4.id, prize_id: prize3.id)
UserPrize.create!(user_id: user4.id, prize_id: prize1.id)
UserPrize.create!(user_id: user5.id, prize_id: prize4.id)
UserPrize.create!(user_id: user5.id, prize_id: prize2.id)