# Type this to run this file
#   rake db:seed:public_list
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all


if !User.find_by_name("VTuber List")
  User.create!(
    username: "VTuber List",
    email: "vtuberlist@vtuberlist.com",
    password: VTUBERLIST_PASSWORD
  )
  puts "#{user.username} created."

end

# lists
