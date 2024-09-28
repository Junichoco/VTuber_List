# Type this to run this file
#   rake db:seed:tags
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

tags = ["singer", "rap", "guitar", "Minecraft", "FPS", "League of Legends", "big chest", "deep singing voice",
        "baby girl failure", "baby", "violin", "flute", "small chest", "heavy metal", "thighs", "piano", "cooking",
        "French", "British", "Spanish", "Chinese", "Korean", "Italian", "Brazilian", "Indonesian", "German", "Australian",
        "Filipino", "Malaysian", "hag", "kusogaki", "fluffy", "animal ears", "mom", "comedian", "fortune telling",
        "ASMR", "art", "VTuber rigger", "VTuber artist", "voice actor", "cosplayer", "tutorials", "not anime", "scream",
        "furry", "adult content", "short", "tall", "drama", "alcohol", "Japanese and English", "menhera", "pon", "Thai"]

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
    name: "Chiaki Katsumi",
    tags: []
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
  }

].each do |hash|
  vtuber = Vtuber.find_by_name(hash[:name])
  if vtuber
    hash[:tags].each do |tag_name|
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
