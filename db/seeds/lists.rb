require "open-uri"

# Type this to run this file
#   rake db:seed:lists
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

List.destroy_all

user = User.find_by_name("monkey")


lists =[
  {
    name: "My Oshis",
    vtubers: [
      "Raki Kazuki",
      "Usada Pekora",
      "Sakura Miko",
      "Ami Amami",
      "Phoebe Chan",
      "Amelie Kanon",
      "Mori Calliope",
      "Axel Syrios",
      "Gavis Bettel",
      "Yuuki Sakuna"
    ]
  },
  {
    name: "Great Unknown JP Singers",
    vtubers: [
      "Kohaku Nuino",
      "Amana Nia",
      "Takanashi Yutoha",
      "Ruri Enma",
      "Aoi Neno",
      "Misora Sora",
      "Ririsya",
      "Iguchi-san",
      "yayamugi",
      "Sorakana Ito",
      "Figaro",
      "Hiiragi Youri",
      "Jyangarian",
      "HaNaTan",
      "Nikoniko Pona",
      "Sakurane Kotori"
    ]
  },
  {
    name: "Other VTubers I Watch",
    vtubers: [
      "Banzoin Hakka",
      "Inugami Korone",
      "Tokino Sora",
      "Lottie Shinju",
      "Arisu Oshiro",
      "Lucien Lunaris",
      "Rosco Graves",
      "Amanogawa Shiina",
      "Pipkin Pippa",
      "Majokko Meimi",
      "Hoshifuri Iku",
      "Mari Yume",
      "Kotomiya Iori",
      "Amabuki San",
      "Non Anon",
      "Uchida Shuu",
      "Momose Nina",
      "nyaruchuu",
      "Miyuri Mei"
    ]
  },
  {
    name: "Thighs",
    vtubers: [
      "Majokko Meimi",
      "MunMosh",
      "Raki Kazuki",
      "Lottie Shinju",
      "Mori Calliope",
      "Hiiragi Youri",
      "Azumalim",
      "Amabuki San"
    ]
  }
]

lists.each do |hash|
  newList = List.create!{
    name: hash[:name],
    user: user,
    order_num: user.new_list_num
  }

  if newList
    puts "#{newList.name} created"
  else
    puts task.errors.full_messages
    break
  end

  hash[:vtubers].each do |vtuber|
    if newList.add_vtuber(Vtuber.find_by_name(vtuber.name))
      puts "Added #{vtuber} to #{newList.name}"
    else
      puts task.errors.full_messages
  end
end




# oshis = List.create!(
#   name: "My Oshis",
#   user: user
#   order_num: user.new_list_num
# )
# [
#   "Raki Kazuki",
#   "Usada Pekora",
#   "Sakura Miko",
#   "Ami Amami",
#   "Phoebe Chan",
#   "Amelie Kanon",
#   "Mori Calliope",
#   "Axel Syrios",
#   "Gavis Bettel",
#   "Yuuki Sakuna"
# ].each do |name|
#   if oshis.add_vtuber(Vtuber.find_by_name(name))
#     puts "Added #{name} to #{oshis.name}"
#   else
#     puts task.errors.full_messages
#   end
# end


# singers = List.create!(
#   name: "Great JP Singers",
#   user: user
# )
# [
#   "Kohaku Nuino",
#   "Amana Nia",
#   "Takanashi Yutoha",
#   "Ruri Enma",
#   "Aoi Neno",
#   "Misora Sora",
#   "Ririsya",
#   "Iguchi-san",
#   "yayamugi",
#   "Sorakana Ito",
#   "Figaro",
#   "Hiiragi Youri",
#   "Jyangarian",
#   "HaNaTan",
#   "Nikoniko Pona",
#   "Sakurane Kotori"
# ].each do |name|
#   if singers.add_vtuber(Vtuber.find_by_name(name))
#     puts "Added #{name} to #{singers.name}"
#   else
#     puts task.errors.full_messages
#   end
# end

# funny = List.create!(
#   name: "Funny",
#   user: user
# )
# [
#   "Usada Pekora",
#   "Gavis Bettel",
#   "Axel Syrios",
#   "Sakura Miko",
#   "Non Anon",
#   "Lottie Shinju",
#   "Raki Kazuki"
# ].each do |name|
#   if funny.add_vtuber(Vtuber.find_by_name(name))
#     puts "Added #{name} to #{funny.name}"
#   else
#     puts task.errors.full_messages
#   end
# end

# english = List.create!(
#   name: "JP VTubers who know some English",
#   user: user
# )
# [
#   "Ririsya",
#   "Aoi Neno",
#   "Hiiragi Youri"
# ].each do |name|
#   if english.add_vtuber(Vtuber.find_by_name(name))
#     puts "Added #{name} to #{english.name}"
#   else
#     puts task.errors.full_messages
#   end
# end

# bilingual = List.create!(
#   name: "JP and EN Bilingual",
#   user: user
# )
# [
#   "Amelie Kanon",
#   "Axel Syrios",
#   "Hoshifuri Iku"
# ].each do |name|
#   if bilingual.add_vtuber(Vtuber.find_by_name(name))
#     puts "Added #{name} to #{bilingual.name}"
#   else
#     puts task.errors.full_messages
#   end
# end

# graduated = List.create!(
#   name: "Oshis who graduated",
#   user: user
# )
# ["Minato Aqua"]each do |name|
#   if graduated.add_vtuber(Vtuber.find_by_name(name))
#     puts "Added #{name} to #{graduated.name}"
#   else
#     puts task.errors.full_messages
#   end
# end

# flood = List.create!(
#   name: "Flooded Apartment",
#   user: user
# )
# ["Gavis Bettel", "Majokko Meimi"].each do |name|
#   if flood.add_vtuber(Vtuber.find_by_name(name))
#     puts "Added #{name} to #{flood.name}"
#   else
#     puts task.errors.full_messages
#   end
# end
