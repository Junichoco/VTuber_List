# Type this to run this file
#   rake db:seed:tags
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

[
  {
    name: "Chiaki Katsumi",
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
  }
].each do |hash|
  vtuber = Vtuber.find_by_name(hash[:name])
  if vtuber
    hash[:tags].each do |tag_name|
      if !vtuber.has_tag?(tag_name)
        vtuber.add_tag(tag_name)
        puts "#{tag_name} added to #{vtuber.name}"
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
