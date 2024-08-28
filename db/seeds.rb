# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Vtuber.destroy_all
Agency.destroy_all
List.destroy_all
# VtuberMarker.destroy_all

indie = Agency.create!(
  name: "Indie"
)

hololive = Agency.create!(
  name: "Hololive",
  country: "Japan"
)

pixellink = Agency.create!(
  name: "PixelLink",
  country: "United States"
)

phase = Agency.create!(
  name: "Phase Connect",
  country: "Canada"
)

niji = Agency.create!(
  name: "Nijisanji",
  country: "Japan"
)

holostars = Agency.create!(
  name: "Holostars",
  country: "Japan"
)

kawaii = Agency.create!(
  name: "Production Kawaii",
  country: "United States"
)

vshojo = Agency.create!(
  name: "Vshojo",
  country: "United States"
)

idol = Agency.create!(
  name: "idol",
  country: "Japan"
)

vlash = Agency.create!(
  name: "Vlash",
  country: "Japan"
)

fsp = Agency.create!(
  name: "First Stage Production",
  country: "United States"
)

globie = Agency.create!(
  name: "globie",
  country: "Japan"
)

v4mirai = Agency.create!(
  name: "V4Mirai",
  country: "Japan"
)

mixt = Agency.create!(
  name: "Mixt",
  country: "Japan"
)

puts "Agencies created"

miko = Vtuber.create!(
  name: "Sakura Miko",
  description: "A shrine maiden from the Virtual Sakura Shrine. With a vivid admiration for idols, she constantly pushes herself to greater heights to become a top elite shrine maiden-idol like no other!\nWell... a self-proclaimed 'elite,' to be exact. Fans would think \"clutz\" fits her better...",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

aqua = Vtuber.create!(
  name: "Minato Aqua",
  description: "A marine maid-styled virtual maid. She is trying her very best, yet is still sometimes awkward and clumsy.",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

korone = Vtuber.create!(
  name: "Inugami Korone",
  description: "A dog from a bakery in the city. She likes to play games during her free time while watchdogging.",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

raki = Vtuber.create!(
  name: "Raki Kazuki",
  description: "Formally a raccoon familiar, Raki is a witch who attends a prestigious magical academy. When she isn’t studying, she spends her free time singing or dumpster diving, and despite her clumsy nature, works hard every day.",
  agency: pixellink,
  gender: "female",
  main_language: "English"
)

ami = Vtuber.create!(
  name: "Ami Amami",
  description: "The cutest frog idol",
  agency: indie,
  gender: "female",
  main_language: "English"
)

iguchi = Vtuber.create!(
  name: "Iguchi-san",
  description: "monkey",
  agency: indie,
  gender: "female",
  main_language: "Japanese",
  channel: "https://www.youtube.com/@iguchisun"
)

ironmouse = Vtuber.create!(
  name: "Iron Mouse",
  description: "monkey",
  agency: vshojo,
  gender: "female",
  main_language: "English"
)

igasaki = Vtuber.create!(
  name: "Igasaki Ayaka",
  description: "ASMR artist and hentai voice actress.",
  agency: indie,
  gender: "female",
  main_language: "Japanese"
)

amana = Vtuber.create!(
  name: "Amana Nia",
  description: "monkey",
  agency: indie,
  gender: "female",
  main_language: "Japanese"
)

amelie = Vtuber.create!(
  name: "Amelie Kanon",
  description: "A bilingual tea fairy.",
  agency: indie,
  gender: "female",
  main_language: "Japanese"
)

ririsha = Vtuber.create!(
  name: "Ririsha",
  description: "A zombie Vsinger",
  agency: indie,
  gender: "female",
  main_language: "Japanese"
)

hoshimiya = Vtuber.create!(
  name: "Hoshimiya Choco",
  description: "A cosplayer who gained fame by cosplaying as Usada Pekora in Pekora's 2023 April Fool's video.",
  agency: vlash,
  gender: "female",
  main_language: "Japanese"
)



puts "VTubers created"

user = User.create!(
  username: "monkey",
  email: "sunjun.software@gmail.com",
  password: "123123"
)

cute = List.create!(
  name: "Cute",
  user: user
)

puts "List created"

cute.favorite(miko)

puts "Cute: #{cute}"

user.favorite(cute)

puts "User: #{user}"
