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
      "Enma Ruri",
      "Aoi Neno",
      "Misora Sora",
      "Ririsya",
      "Iguchi Sun",
      "yayamugi",
      "Sorakana Ito",
      "Figaro",
      "Hiiragi Youri",
      "Jyangarian",
      "HaNaTan",
      "Ibara Muan",
      "Nijyuna",
      "Nikoniko Pona",
      "MunMosh",
      "Kugumi Rui",
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
      "Uchida Shu",
      "Momose Nina",
      "nyaruchuuu",
      "Miyuri Mei",
      "Earendel"
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
  },
  {
    name: "Interesting Artists",
    vtubers: [
      "Fusako",
      "hatyati",
      "Kuchinawa Yuyua",
      "Takanashi Hotori"
    ]
  },
  {
    name: "Interesting Concepts",
    vtubers: [
      "Otsuka Ray",
      "Azumalim",
      "Tabino Sora"
    ]
  }
]


lists.each do |list|
  newList = List.create!(
    name: list[:name],
    user: user,
    order_num: user.next_num
  )

  if newList
    puts "#{newList.name} created"
  else
    puts task.errors.full_messages
    abort
  end

  list[:vtubers].each do |vtuber|
    if newList.add_vtuber(Vtuber.find_by_name(vtuber))

      puts "Added #{vtuber} to #{newList.name}"

    else
      puts "#{vtuber} not found"
      abort
    end
  end
end

List.all.each do |list|
  list.reset_positions
end
