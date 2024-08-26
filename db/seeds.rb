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
Bookmark.destroy_all

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

puts "Agencies created"

miko = Vtuber.create!(
  name: "Sakura Miko",
  description: "A shrine maiden from the Virtual Sakura Shrine. With a vivid admiration for idols, she constantly pushes herself to greater heights to become a top elite shrine maiden-idol like no other!\nWell... a self-proclaimed 'elite,' to be exact. Fans would think \"clutz\" fits her better...",
  agency: hololive
)

aqua = Vtuber.create!(
  name: "Minato Aqua",
  description: "A marine maid-styled virtual maid. She is trying her very best, yet is still sometimes awkward and clumsy.",
  agency: hololive
)

korone = Vtuber.create!(
  name: "Inugami Korone",
  description: "A dog from a bakery in the city. She likes to play games during her free time while watchdogging.",
  agency: hololive
)

raki = Vtuber.create!(
  name: "Raki Kazuki",
  description: "Formally a raccoon familiar, Raki is a witch who attends a prestigious magical academy. When she isn’t studying, she spends her free time singing or dumpster diving, and despite her clumsy nature, works hard every day.",
  agency: pixellink
)

ami = Vtuber.create!(
  name: "Ami Amami",
  description: "The cutest frog idol",
  agency: indie
)

puts "VTubers created"

cute = List.create!(
  name: "Cute"
)

puts "List created"

Bookmark.create!(
  list: cute,
  vtuber: miko
)
