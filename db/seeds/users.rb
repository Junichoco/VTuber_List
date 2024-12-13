require "open-uri"

# Type this to run this file
#   rake db:seed:users
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

User.destroy_all


user = User.create!(
  username: "Yatsuhashi",
  email: "sunjun.software@gmail.com",
  password: "123123"
)

if user
  puts "#{user.username} created."
end
