# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Play.destroy_all
User.destroy_all
Game.destroy_all
users = User.create([
  { name: 'Wes', email: 'wesferrer1@gmail.com', password: 'password', password_confirmation: 'password'},
  { name: 'James', email: 'james@gmail.com', password: 'password', password_confirmation: 'password'}
  ])
games = Game.create([
  { name: 'Suburbia', image: File.new("#{Rails.root}/app/assets/images/pic1418335_md.jpg") year: 2012, designer: 'Ted Alspach', publisher: "Bezier Games", max_players: 5}
  ])
plays = Play.create([
  { game_id: Game.first.id, user_id: User.first.id, date: Date.new(2017, 01, 17) , location: 'home', comments: 'GG!', duration: 1, score: 25},
  { game_id: Game.first.id, user_id: User.last.id, date: Date.new(2017, 01, 18), location: 'PAD', comments: 'OMG!', duration: 3, score: 100}
  ])
