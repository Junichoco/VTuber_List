# Type this to run this file
#   rake db:seed:tags
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

tags = ["singer", "rap", "guitar", "FPS", "League of Legends", "big chest", "deep singing voice",
        "baby girl failure", "baby", "violin", "flute", "small chest", "heavy metal", "thighs", "piano", "cooking",
        "French", "British", "Spanish", "Chinese", "Korean", "Italian", "Brazilian", "Indonesian", "German", "Australian",
        "Filipino", "Malaysian", "hag", "kusogaki", "fluffy", "animal ears", "mom", "comedian", "fortune telling",
        "ASMR", "art", "VTuber rigger", "VTuber artist", "voice actor", "cosplayer", "tutorials", "not anime",
        "furry", "R18 content", "short", "tall", "drama", "alcohol", "menhera", "pon", "Thai",
        "esports", "gamer", "ojou-sama", "mole", "boomer", "deep voice", "dance", "sexy webcam",
        "doujin art", "doujin voice", "twins"]

tags.each do |tag|
  if !Tag.find_by_name(tag)
  Tag.create!(
    name: tag
  )
  puts "#{tag} created"
  end
end



[
  {
    name: "Raki Kazuki",
    tags: ["singer", "ASMR", "animal ears", "heavy metal", "pon", "baby girl failure"]
  },
  {
    name: "Chiaki Katsumi",
    tags: ["gamer"]
  },
  {
    name: "Miuna Usako",
    tags: ["singer", "Chinese", "ASMR", "short"]
  },
  {
    name: "Elia Stellaria",
    tags: ["British"]
  },
  {
    name: "Shirakawa Shirase",
    tags: ["singer", "guitar"]
  },
  {
    name: "MiCosmiC baby",
    tags: ["singer", "Indonesian"]
  },
  {
    name: "dtto.",
    tags: ["singer", "FPS", "esports", "Thai"]
  },
  {
    name: "Urameshi Conta",
    tags: ["singer", "VTuber artist", "VTuber rigger"]
  },
  {
    name: "Aoi",
    tags: ["not anime", "singer", "art", "guitar", "piano"]
  },
  {
    name: "Uchi Fifi",
    tags: ["singer", "Chinese", "ASMR"]
  },
  {
    name: "Nemupipi",
    tags: ["piano"]
  },
  {
    name: "Banzoin Hakka",
    tags: ["singer", "Spanish", "heavy metal"]
  },
  {
    name: "Morino Merun",
    tags: ["singer", "Spanish"]
  },
  {
    name: "Arisu Oshiro",
    tags: ["singer", "Spanish", "short"]
  },
  {
    name: "Rosco Graves",
    tags: ["singer", "rap", "Spanish", "short", "small chest"]
  },
  {
    name: "Kotomiya Iori",
    tags: ["gamer", "FPS", "ojou-sama", "mole"]
  },
  {
    name: "Pippa Pebblesworth",
    tags: ["singer", "British", "small chest", "short"]
  },
  {
    name: "Misora Sora",
    tags: ["singer", "mole"]
  },
  {
    name: "Tokiwa Aino",
    tags: ["singer"]
  },
  {
    name: "Rin Penrose",
    tags: ["British"]
  },
  {
    name: "Tokusari Kukuri",
    tags: ["singer", "ASMR"]
  },
  {
    name: "Somaru",
    tags: ["singer", "Chinese"]
  },
  {
    name: "Vesper Noir",
    tags: ["boomer"]
  },
  {
    name: "Mari Yume",
    tags: ["VTuber rigger", "tutorials"]
  },
  {
    name: "Metorial",
    tags: ["gamer", "singer", "Malaysian"]
  },
  {
    name: "Mao Ura",
    tags: ["singer","violin", "guitar"]
  },
  {
    name: "Quon Tama",
    tags: ["singer"]
  },
  {
    name: "Yuuki Sakuna",
    tags: ["singer", "animal ears"]
  },
  {
    name: "Hanamiya Rica",
    tags: ["singer", "ASMR"]
  },
  {
    name: "Kousaka Mayu",
    tags: ["cooking"]
  },
  {
    name: "Takanashi Hotori",
    tags: ["art", "VTuber rigger", "VTuber artist"]
  },
  {
    name: "Amari Mei",
    tags: ["VTuber rigger", "VTuber artist"]
  },
  {
    name: "Havelami Agne",
    tags: ["ASMR", "gamer"]
  },
  {
    name: "Shiduki Sena",
    tags: ["singer", "Chinese"]
  },
  {
    name: "Fusako",
    tags: ["art"]
  },
  {
    name: "Shirogane Noel",
    tags: ["ASMR", "big chest"]
  },
  {
    name: "Abyss Song Syndrome",
    tags: ["singer", "deep voice", "big chest"]
  },
  {
    name: "Chisaka Airi",
    tags: ["Korean", "animal ears", "big chest"]
  },
  {
    name: "Takanashi Yutoha",
    tags: ["singer", "big chest"]
  },
  {
    name: "Amano Nene",
    tags: ["singer", "ASMR", "big chest"]
  },
  {
    name: "Nui Sociere",
    tags: ["gamer", "big chest"]
  },
  {
    name: "Josuiji Shinri",
    tags: ["deep voice", "big chest"]
  },
  {
    name: "Hanabatake Chaika",
    tags: ["big chest"]
  },
  {
    name: "Sabita Hagane",
    tags: ["art"]
  },
  {
    name: "Hinata Yuka",
    tags: ["ASMR", "voice actor", "doujin voice"]
  },
  {
    name: "Uno Sakura",
    tags: ["ASMR", "voice actor", "doujin voice"]
  },
  {
    name: "macoto.",
    tags: ["ASMR", "sexy webcam"]
  },
  {
    name: "Komari Mayu",
    tags: ["VTuber artist", "VTuber rigger", "singer"]
  },
  {
    name: "Kuchinawa Yuyua",
    tags: ["VTuber artist", "VTuber rigger"]
  },
  {
    name: "Sabashiro",
    tags: ["singer","not anime"]
  },
  {
    name: "Kanaut Nishe",
    tags: ["art", "not anime"]
  },
  {
    name: "Rui Colchique",
    tags: ["twins"]
  },
  {
    name: "Marie Colchique",
    tags: ["twins"]
  },
  {
    name: "Yuki Astrea",
    tags: ["twins"]
  },
  {
    name: "Yuna Astrea",
    tags: ["twins"]
  }

].each do |hash|
  vtuber = Vtuber.find_by_name(hash[:name])
  if vtuber
    hash[:tags].each do |tag_name|
      if !Tag.find_by_name(tag_name)
        puts "#{tag_name} was not added to #{vtuber.name}"
        abort
      end

      if !vtuber.has_tag?(tag_name)
        puts "#{tag_name} added to #{vtuber.name}" if vtuber.add_tag(tag_name)
      end
    end
  else
    puts "#{hash[:name]} not found"
  end
end


# if chiaki = Vtuber.find_by_name("Chiaki Katsumi")
#   ["singer"].each do |tag|
#     if !chiaki.has_tag?(tag)
#     chiaki.add_tag(tag)
#     puts "Tags added to Chiaki"
#   end
# end
