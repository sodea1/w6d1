# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def rand_id
  rand(1..10_000)
end

ActiveRecord::Base.transaction do
  User.delete_all
  Poll.delete_all
  Question.delete_all
  AnswerChoice.delete_all
  Response.delete_all
  
users = [
  ['Sean', 1]
  ['Gee', 2]
  ['Plop', 3]
  ['Jiggy', 4]
]

sean = User.create(
  id: rand_id,
  username: 'sean',
  poll_id: 1
)

kerry = User.create(
  id: rand_id,
  username: 'kerry99',
  poll_id: 5
)
george = User.create(
  id: rand_id,
  username: 'george',
  poll_id: 2
)


