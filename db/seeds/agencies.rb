# Type this to run this file
#   rake db:seed:agencies
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

[
  { name: "Vebop Project",
    location: "Japan",
    description: "A VTuber agency owned by REALITY Studios.",
    website: "https://vebop.net/",
    yt_channel: "https://www.youtube.com/@VebopProject_official"
  },
  {
    name: "Varium",
    location: "Japan",
    description: "No description available.",
    website: "https://varium.jp/",
    yt_channel: "https://www.youtube.com/@VariumOfficial"
  },
  {
    name: "V4Mirai",
    location: "Japan",
    description: "A VTuber agency owned by Brave Group.",
    website: "https://v4mirai.com/",
    yt_channel: "https://www.youtube.com/@V4Mirai"
  }
].each do |agency|
  if !Agency.find_by_name(agency[:name])
    puts "#{agency[:name]} created" if Agency.create!(agency)
  end
end
