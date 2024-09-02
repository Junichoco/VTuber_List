Vtuber.destroy_all
Agency.destroy_all
List.destroy_all
User.destroy_all
# VtuberMarker.destroy_all

indie = Agency.create!(
  name: "Indie"
)

hololive = Agency.create!(
  name: "Hololive",
  country: "Japan"
)

holoen = Agency.create!(
  name: "Hololive EN",
  country: "Japan"
)

holoid = Agency.create!(
  name: "Hololive Indonesia",
  country: "Japan"
)

holostars = Agency.create!(
  name: "Holostars",
  country: "Japan"
)

holostarsen = Agency.create!(
  name: "Holostars EN",
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

nijien = Agency.create!(
  name: "Nijisanji EN",
  country: "Japan"
)

kawaii = Agency.create!(
  name: "Production Kawaii",
  country: "United States"
)

vshojo = Agency.create!(
  name: "VShojo",
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

mixst = Agency.create!(
  name: "Mixst",
  country: "Japan"
)

vdere = Agency.create!(
  name: "V-Dere",
  country: "United States"
)

vallure = Agency.create!(
  name: "VAllure",
  country: "United States"
)

hasu = Agency.create!(
  name: "Hasu no Sora Jogakuin",
  country: "Japan"
)


puts "Agencies created"


sora = Vtuber.create!(
  name: "Tokino Sora",
  description: "monkey",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

suisei = Vtuber.create!(
  name: "Hoshimachi Suisei",
  description: "monkey",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

mel = Vtuber.create!(
  name: "Yozora Mel",
  description: "monkey",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

subaru = Vtuber.create!(
  name: "Oozora Subaru",
  description: "monkey",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

ayame = Vtuber.create!(
  name: "Nakiri Ayame",
  description: "monkey",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

shion = Vtuber.create!(
  name: "Murasaki Shion",
  description: "monkey",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

okayu = Vtuber.create!(
  name: "Nekomata Okayu",
  description: "monkey",
  agency: hololive,
  gender: "female",
  main_language: "Japanese"
)

miko = Vtuber.create!(
  name: "Sakura Miko",
  description: "A shrine maiden from the Virtual Sakura Shrine. With a vivid admiration for idols, she constantly pushes herself to greater heights to become a top elite shrine maiden-idol like no other!\nWell... a self-proclaimed 'elite,' to be exact. Fans would think \"clutz\" fits her better...",
  agency: hololive,
  gender: "female",
  main_language: "Japanese",
  photo_url: "https://hololive.hololivepro.com/wp-content/uploads/2023/02/Sakura-Miko_pr-img_01.png"
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
  yt_channel: "https://www.youtube.com/@iguchisun"
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

ririsya = Vtuber.create!(
  name: "Ririsya",
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

ray = Vtuber.create!(
  name: "Otsuka Ray",
  description: "A mom VTuber",
  agency: indie,
  gender: "female",
  main_language: "Japanese"
)

puts "VTubers created"
