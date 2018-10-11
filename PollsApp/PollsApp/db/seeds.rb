# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all


u1 = User.create!(username: 'username1')
debugger
u2 = User.create!(username: 'username2')
u3 = User.create!(username: 'username3')

Poll.create!(title: 'Poll1: Food', user_id: u1.id) # <= user_id: 1

  Question.create!(text: 'What\'s your favorite food?', poll_id: 1) # <= question_id: 1
    AnswerChoice.create!(text: 'Burgers and Fries', question_id: 1) # <= answer-choice_id: 1
      Response.create!(user_id: 3, question_id: 1)
      Response.create!(user_id: 1, question_id: 1)
    AnswerChoice.create!(text: 'Ribs', question_id: 1) # <= answer-choice_id: 2
      Response.create!(user_id: 2, question_id: 2)
      Response.create!(user_id: 3, question_id: 2)
  Question.create!(text: 'What\'s your favorite drink?', poll_id: 1) # <= question_id: 2
    AnswerChoice.create!(text: 'Juice', question_id: 2) # <= answer-choice_id: 3
      Response.create!(user_id: 1, question_id: 3)
      Response.create!(user_id: 2, question_id: 3)
    AnswerChoice.create!(text: 'Iced Tea', question_id: 2) # <= answer-choice_id: 4
      Response.create!(user_id: 3, question_id: 4)
      Response.create!(user_id: 1, question_id: 4)

Poll.create!(title: 'Poll2: Travel', user_id: 2)
Question.create!(text: 'Favorite place to travel to?', poll_id: 2) # <= question_id: 3
AnswerChoice.create!(text: 'New York City', question_id: 3)
Response.create!(user_id: 3, question_id: 5)
Response.create!(user_id: 2, question_id: 5)
AnswerChoice.create!(text: 'Fiji', question_id: 3)
Response.create!(user_id: 1, question_id: 6)
Response.create!(user_id: 2, question_id: 6)
Question.create!(text: 'Dream destination?', poll_id: 2) # <= question_id: 4
AnswerChoice.create!(text: 'Hawaii', question_id: 4)
Response.create!(user_id: 1, question_id: 7)
Response.create!(user_id: 3, question_id: 7)
AnswerChoice.create!(text: 'The Moon', question_id: 4)
Response.create!(user_id: 3, question_id: 8)
Response.create!(user_id: 2, question_id: 8)

Poll.create!(title: 'Poll3: Computer', user_id: 2)
Question.create!(text: 'Windows or Mac?', poll_id: 3) # <= question_id: 5
AnswerChoice.create!(text: 'Windows', question_id: 5)
Response.create!(user_id: 2, question_id: 9)
Response.create!(user_id: 1, question_id: 9)
AnswerChoice.create!(text: 'Mac', question_id: 5)
Response.create!(user_id: 1, question_id: 10)
Response.create!(user_id: 3, question_id: 10)
Question.create!(text: 'Favorite computer brand?', poll_id: 3) # <= question_id: 6
AnswerChoice.create!(text: 'Apple', question_id: 6)
Response.create!(user_id: 3, question_id: 11)
Response.create!(user_id: 1, question_id: 11)
AnswerChoice.create!(text: 'Banana', question_id: 6)
Response.create!(user_id: 1, question_id: 12)
Response.create!(user_id: 2, question_id: 12)

Poll.create!(title: 'Poll4: Life After Death', user_id: 3)
Question.create!(text: 'What are your thoughts on reincarnation?', poll_id: 4) # <= question_id: 7
AnswerChoice.create!(text: 'Reincarnation exists', question_id: 7)
Response.create!(user_id: 2, question_id: 13)
Response.create!(user_id: 1, question_id: 13)
AnswerChoice.create!(text: 'Reincarnation definitely exists!!!', question_id: 7)
Response.create!(user_id: 1, question_id: 14)
Response.create!(user_id: 2, question_id: 14)
Question.create!(text: 'Do you have birthmarks?', poll_id: 4) # <= question_id: 8
AnswerChoice.create!(text: 'Yes', question_id: 8)
Response.create!(user_id: 3, question_id: 15)
Response.create!(user_id: 1, question_id: 15)
AnswerChoice.create!(text: 'No', question_id: 8)
Response.create!(user_id: 1, question_id: 16)
Response.create!(user_id: 3, question_id: 16)
