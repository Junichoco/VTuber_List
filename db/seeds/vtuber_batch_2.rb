require "open-uri"

# Type this to run this file
#   rake db:seed:vtuber_batch_2
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

indie = Agency.find_by_name("Indie")
puts indie.name
pixellink = Agency.find_by_name("PixelLink")

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

[
  {
    name: "Chiaki Katsumi",
    jp_name: "千秋 勝美",
    description: "Feared and revered by many, Chiaki is the leader of the renowned hacker organization, Nylena. Though she tries to live up to her imposing title, her playful nature cannot be easily contained, and her gaming spirit runs strong.",
    agency: pixellink,
    gender: "female",
    main_language: "English",
    birthday: "2020/02/03",
    debut_date: "2023/06/16",
    yt_channel: "https://www.youtube.com/@ChiakiKatsumi",
  }
]


if chiaki = Vtuber.find_by_name("Chiaki Katsumi")
  ["singer"].each do |tag|
    chiaki.add_tag(tag)
    puts "Tags added to Chiaki"
  end
end
