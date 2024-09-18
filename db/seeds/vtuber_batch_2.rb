require "open-uri"

# Type this to run this file
#   rake db:seed:vtuber_batch_2
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

indie = Agency.find_by_name("Indie")
puts indie.name

if (!Vtuber.find_by_name("Non Anon"))
  non = Vtuber.create!(
    name: "Non Anon",
    jp_name: "亜音ノン",
    description: "No description available.",
    agency: indie,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@NonAnon",
    twitch_channel: "twitch.tv/notnonanon"
  )
  ["singer", "comedian", "ASMR"].each do |tag|
    non.add_tag(tag)
  end
  puts "#{non.name} created"
end
