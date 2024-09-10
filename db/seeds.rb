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
User.destroy_all
# VtuberMarker.destroy_all

indie = Agency.create!(
  name: "Indie"
)

hololive = Agency.create!(
  name: "Hololive",
  location: "Japan"
)

holoen = Agency.create!(
  name: "Hololive EN",
  location: "Japan"
)

holoid = Agency.create!(
  name: "Hololive Indonesia",
  location: "Japan"
)

holostars = Agency.create!(
  name: "Holostars",
  location: "Japan"
)

holostarsen = Agency.create!(
  name: "Holostars EN",
  location: "Japan"
)

pixellink = Agency.create!(
  name: "PixelLink",
  location: "United States"
)

phase = Agency.create!(
  name: "Phase Connect",
  location: "Canada"
)

niji = Agency.create!(
  name: "Nijisanji",
  location: "Japan"
)

nijien = Agency.create!(
  name: "Nijisanji EN",
  location: "Japan"
)

kawaii = Agency.create!(
  name: "Production Kawaii",
  location: "United States"
)

vshojo = Agency.create!(
  name: "VShojo",
  location: "United States"
)

idol = Agency.create!(
  name: "idol",
  location: "Japan"
)

vlash = Agency.create!(
  name: "Vlash",
  location: "Japan"
)

fsp = Agency.create!(
  name: "First Stage Production",
  location: "United States"
)

globie = Agency.create!(
  name: "globie",
  location: "Japan"
)

v4mirai = Agency.create!(
  name: "V4Mirai",
  location: "Japan"
)

mixst = Agency.create!(
  name: "Mixst",
  location: "Japan"
)

vdere = Agency.create!(
  name: "V-Dere",
  location: "United States"
)

vallure = Agency.create!(
  name: "VAllure",
  location: "United States"
)

hasu = Agency.create!(
  name: "Hasu no Sora Jogakuin",
  location: "Japan"
)

univirtual = Agency.create!(
  name: "UniVIRTUAL",
  location: "Japan",
  website: "https://univirtual.jp/"
)

dotlive = Agency.create!(
  name: ".LIVE",
  location: "Japan",
  website: "https://appland.co.jp/talents/",
  yt_channel: "https://www.youtube.com/channel/UC7-YM5BhR-FCZloquRE7XGw",
  description: "A VTuber agency owned by Appland, Inc. It includes the VTuber group VPI (Pronounced \"Vee-pai\")",
)


# palepro = Agency.create!(
#   name: "Palette Project",
#   location: "Japan"
# )


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

pekora = Vtuber.create!(
  name: "Usada Pekora",
  description: "The princess of Pekoland",
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
  jp_name: "ラキ・カズキ",
  description: "Formally a raccoon familiar, Raki is a witch who attends a prestigious magical academy. When she isn’t studying, she spends her free time singing or dumpster diving, and despite her clumsy nature, works hard every day.",
  agency: pixellink,
  gender: "female",
  main_language: "English",
  photo_url: "https://cdn.sanity.io/images/2ihqd0kb/production/e43d6f92c16e26bf1c3a18ed3fe8011d2eda199e-3000x5000.png",
  yt_channel: "https://www.youtube.com/@RakiKazuki",
  birthday: "08/24",
  debut_date: "2023/06/16"
)

ami = Vtuber.create!(
  name: "Ami Amami",
  jp_name: "雨海あみ",
  description: "The cutest frog idol",
  agency: indie,
  gender: "female",
  main_language: "English",
  yt_channel: "https://www.youtube.com/@amamiAmi",
  twitch_channel: "https://www.youtube.com/redirect?event=channel_description&redir_token=QUFFLUhqbXJEOWFBcGFONV92LVRwNTJzaU1Nc0JWOGJNQXxBQ3Jtc0tsWE9LNTU5cWNJNXRUdElhWDJrRkRHMmhNQm5pOEh6SHM4OEZ5TGRTVVExaVZkX3Y3ckFrd1VrYjlzOEl6OVZEOHdsT1kyYUpIVVdCeVBxSWp2Z1VCNGRCV1ZRMzVzVTdJUDRyY1U4dUhKRk5fM2pxdw&q=https%3A%2F%2Ftwitch.tv%2Famiamami",
  photo_url: "https://static.wikia.nocookie.net/virtualyoutuber/images/8/87/Amami_Ami_Portrait.png/revision/latest?cb=20230422003330",
  debut_date: "2023/04/29",
  birthday: "04/03"
)

calli = Vtuber.create!(
  name: "Mori Calliope",
  jp_name: "森カリオペ",
  description: "The Grim Reaper's first apprentice. Due to modern medical care causing a decline in the reaping business, Calliope decided to become a VTuber to harvest souls instead. It seems that the ascended souls of the people who are vaporized by the wholesome interactions between VTubers go to her as well.\nThat being said, despite the image her hardcore vocals and manner of speech gives off, she's actually a gentle-hearted girl who cares greatly for her friends.",
  agency: hololive,
  gender: "female",
  main_language: "English",
  yt_channel: "https://www.youtube.com/channel/UCL_qhgtOy0dy1Agp8vkySQg",
  photo_url: "https://hololive.hololivepro.com/wp-content/uploads/2022/04/4001_Mori-Calliope.png",
  debut_date: "2020/09/12",
  birthday: "04/04"
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
  jp_name: "天満ニア",
  description: "monkey",
  agency: indie,
  gender: "female",
  main_language: "Japanese",
  yt_channel: "https://www.youtube.com/channel/UC3KldSym-HTLMkvitStsNTw",
  photo_url: "https://yt3.googleusercontent.com/VhPEjVw-A4NsYYHE5Ol-V9bZP2UcCZ1oBAzgQ5-LAR8KDekApywdlq6SCX5w5NAW0Kc1V0Im1A=s900-c-k-c0x00ffffff-no-rj",
  birthday: "10/05",
  debut_date: "2020/02/02"
)

amelie = Vtuber.create!(
  name: "Amelie Kanon",
  description: "A bilingual tea fairy.",
  agency: indie,
  gender: "female",
  main_language: "Japanese",
  yt_channel: "https://www.youtube.com/@AmelieKanon",
  twitch_channel: "https://www.twitch.tv/ameliekanon",
  debut_date: "2023/5/21",
  photo_url: "https://ameliekanon.carrd.co/assets/images/image07.jpg?v=44bc4152"
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

lottie = Vtuber.create!(
  name: "Lottie Shinju",
  jp_name: "ロッティ・真珠",
  description: "A silly axolotl with a bubbly personality and a fiery kaiju enthusiast, Lottie strives to spread positivity in the human world—for now...",
  agency: pixellink,
  gender: "female",
  main_language: "English",
  yt_channel: "https://www.youtube.com/@LottieShinju",
  photo_url: "https://cdn.sanity.io/images/2ihqd0kb/production/437363011d1cb341efbd90b7587a8a796e73f364-4093x5787.png",
  birthday: "08/23",
  debut_date: "2023/06/16"
)

delutaya = Vtuber.create!(
  name: "DELUTAYA Δ.",
  description: "monkey",
  agency: indie,
  gender: "female",
  main_language: "Japanese",
  yt_channel: "https://www.youtube.com/@delutaya",
  twitch_channel: "https://www.twitch.tv/delutaya_ch"
)

nuino = Vtuber.create!(
  name: "Kohaku Nuino",
  jp_name: "心羽白ぬいの",
  description: "monkey",
  agency: univirtual,
  gender: "female",
  main_language: "Japanese",
  yt_channel: "https://www.youtube.com/@KOHAKU_NUINO",
  photo_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.youtube.com%2F%40KOHAKU_NUINO&psig=AOvVaw1iTxSrKZmYqqgMrFwYV3nz&ust=1725179725532000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMD6rrvpnogDFQAAAAAdAAAAABAE",
  debut_date: "2022/08/22"
)

yutoha = Vtuber.create!(
  name: "Takanashi Yutoha",
  jp_name: "小鳥遊ゆとは",
  description: "monkey",
  agency: indie,
  gender: "female",
  main_language: "Japanese",
  yt_channel: "https://www.youtube.com/@yutoha",
  twitch_channel: "https://www.twitch.tv/yutohatakanashi",
  photo_url: "https://yt3.googleusercontent.com/RlFlN3aZ1-CMwrtYLrAStjzLIL601gFeyrQ64VDdPoJFG-PTsxSXLpJaqH1Ky2O8nHk6oylEzw=s160-c-k-c0x00ffffff-no-rj"
)

meimi = Vtuber.create!(
  name: "Meimi Majokko",
  jp_name: "魔女っ子めいみ",
  description: "monkey",
  agency: kawaii,
  gender: "female",
  main_language: "English",
  yt_channel: "https://www.youtube.com/@MajokkoMeimi",
  photo_url: "https://yt3.googleusercontent.com/gNIwRzrllQnbVJUr85xsoX1jWpkI1DCR39th93XM96iu4wfT_KAarwZaMugWS3mmDavuyshTbw=s160-c-k-c0x00ffffff-no-rj"
)

toi = Vtuber.create!(
  name: "Itoi Toi",
  jp_name: "絲依とい",
  description: "monkey",
  agency: indie,
  gender: "female",
  main_language: "Japanese",
  yt_channel: "https://www.youtube.com/@itoitoi_Q",
  photo_url: "https://yt3.googleusercontent.com/XyCogGnGdro6r6va6enGjLKPks1xrqi_OlGgWBVYk_AQ6fTgxTT4x7MqztPWuIHpXi2J98quSg=s160-c-k-c0x00ffffff-no-rj"
)

sanso = Vtuber.create!(
  name: "Sanso-chan",
  jp_name: "さんそちゃん",
  description: "monkey",
  agency: indie,
  gender: "female",
  main_language: "Japanese",
  yt_channel: "https://www.youtube.com/@Sansochan",
  photo_url: "https://yt3.googleusercontent.com/XyCogGnGdro6r6va6enGjLKPks1xrqi_OlGgWBVYk_AQ6fTgxTT4x7MqztPWuIHpXi2J98quSg=s160-c-k-c0x00ffffff-no-rj"
)

phoebe = Vtuber.create!(
  name: "Phoebe Chan",
  description: "monkey",
  agency: indie,
  gender: "female",
  main_language: "English"
)

iku = Vtuber.create!(
  name: "Hoshifuri Iku",
  jp_name: "星降いく",
  description: "A former member of PRISM Project's 1st gen.",
  agency: indie,
  gender: "female",
  main_language: "English",
  birthday: "10/01",
  debut_date: "2021/01/30",
  yt_channel: "https://www.youtube.com/@IkuHoshifuri",
  photo_url: "https://pbs.twimg.com/media/Erk3Z1MVcAAGPbL?format=jpg&name=large"
)

himaji = Vtuber.create!(
  name: "Himaji Pane",
  jp_name: "秘間慈ぱね",
  description: "No description available.",
  agency: dotlive,
  gender: "female",
  main_language: "Japanese",
  birthday: "08/30",
  debut_date: "2023/06/16",
  yt_channel: "https://www.youtube.com/@IkuHoshifuri",
  photo_url: "https://pbs.twimg.com/media/Erk3Z1MVcAAGPbL?format=jpg&name=large"
)

puts "VTubers created"







user = User.create!(
  username: "Yatsuhashi",
  email: "sunjun.software@gmail.com",
  password: "123123"
)

user2 = User.create!(
  username: "monkey",
  email: "monkey@monkey.com",
  password: "123123"
)

puts "Users created"


cute = List.create!(
  name: "Cute",
  user: user
)

puts "List created"
puts "Cute: #{cute}"
puts "Users: #{user.username}, #{user2.username}"

vm = VtuberMarker.new
vm.vtuber = miko
vm.list = cute

puts "VTuber marker created: #{vm.vtuber.name}, #{vm.list.name}" if vm.save

oshis = [ami, pekora, amelie, raki, yutoha, meimi, amana, phoebe, nuino]

oshis.each do |oshi|
  VtuberMarker.create!(
    vtuber: oshi,
    list: cute
  )
end

puts "Oshis added"


lm = ListMarker.new
lm.user = user2
lm.list = cute

puts "List marker created: #{lm.user.username}, #{lm.list.name}"

tags = ["singer", "rap", "guitar", "Minecraft", "Apex", "League of Legends", "big boobs", "deep singing voice",
        "baby girl failure", "baby", "saxophone", "loli", "flat chest", "heavy metal", "thighs", "French",
        "British", "Spanish", "Chinese", "Korean", "Italian", "Brazilian", "Indonesian", "German", "Australian",
        "hag", "bald", "kusogaki", "fluffy", "animal ears", "southern accent", "mom", "violin", "ASMR",
        "art", "VTuber rigger", "VTuber artist", "voice actor", "cosplayer", "tutorials", "not anime",
        "singing voice completely different from normal voice", "furry"]

tags.each do |tag|
  Tag.create!(
    name: tag
  )
end
