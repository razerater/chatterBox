require './app.rb'

User.create(username: "razerater")
User.create(username: "hat")

Post.create(user_id: User.where(username: "razerater").first[:id], content: "hello world!", time_posted: "20150702 13:32:52")
Post.create(user_id: User.where(username: "razerater").first[:id], content: "woohoo!", time_posted: "20150702 13:33:06")
Post.create(user_id: User.where(username: "hat").first[:id], content: "I am Berlin!", time_posted: "20150702 13:37:12")

Account.create(user_id: User.where(username: "razerater").first[:id], password: "123", full_name: "Raz Reed", bio: "super expert coder databaser")
Account.create(user_id: User.where(username: "hat").first[:id], password: "cat", full_name: "Berlin Patience", bio: "supervisor")
