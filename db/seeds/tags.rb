# Type this to run this file
#   rake db:seed:tags
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

[
  {
    name: "Chiaki Katsumi",
    tags: ["singer"]
  },
  {
    name: "Miuna Usako",
    tags: ["singer", "Chinese", "ASMR", "short"]
  }
]


if chiaki = Vtuber.find_by_name("Chiaki Katsumi")
  ["singer"].each do |tag|
    if !chiaki.has_tag?(tag)
    chiaki.add_tag(tag)
    puts "Tags added to Chiaki"
  end
end
