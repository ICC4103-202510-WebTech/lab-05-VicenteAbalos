# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(email:"adam@gmail.com",first_name:"Adam",last_name:"Godson")
User.create(email:"eve@gmail.com",first_name:"Eve",last_name:"Godson")
User.create(email:"snakeboy@gmail.com",first_name:"Luci",last_name:"Fer")
User.create(email:"cainthegardner@gmail.com",first_name:"Cain",last_name:"Adamson")
User.create(email:"ablethegoatboy@gmail.com",first_name:"Able",last_name:"Adamson")
User.create(email:"thorselfinvited@gmail.com",first_name:"Thor",last_name:"Odinson")
User.create(email:"john@gmail.com",first_name:"John",last_name:"User")
User.create(email:"bill@gmail.com",first_name:"William",last_name:"Cosby")
User.create(email:"houdini@gmail.com",first_name:"Harry",last_name:"Houdini")
User.create(email:"ludo@gmail.com",first_name:"Ludwig",last_name:"vanBeethoven")
Chat.create(sender_id:"1",receiver_id:"2")
Chat.create(sender_id:"3",receiver_id:"2")
Chat.create(sender_id:"1",receiver_id:"4")
Chat.create(sender_id:"1",receiver_id:"5")
Chat.create(sender_id:"2",receiver_id:"4")
Chat.create(sender_id:"2",receiver_id:"5")
Chat.create(sender_id:"3",receiver_id:"6")
Chat.create(sender_id:"7",receiver_id:"8")
Chat.create(sender_id:"9",receiver_id:"10")
Chat.create(sender_id:"3",receiver_id:"8")
Message.create(chat_id:"1",user_id:"1",body:"Hi Eve, remember to pick up some apples on the way home :)")
Message.create(chat_id:"2",user_id:"3",body:"Why buy when you can always steal?")
Message.create(chat_id:"3",user_id:"1",body:"Cain, have you seen Able? I can't find him.")
Message.create(chat_id:"4",user_id:"1",body:"Able! You should have been home HOURS AGO. Come back NOW!")
Message.create(chat_id:"5",user_id:"2",body:"Cain, tell us anything if you find your brother, please.")
Message.create(chat_id:"6",user_id:"2",body:"Able, please come home. We miss you.")
Message.create(chat_id:"7",user_id:"3",body:"Go back to Finland, redhead!")
Message.create(chat_id:"8",user_id:"7",body:"I know where you live, Bill. You can't hide forever.")
Message.create(chat_id:"9",user_id:"9",body:"He's still following me, I don't know what to do.")
Message.create(chat_id:"10",user_id:"3",body:"Unwanted stalkers? Have you ever considered... murder?")