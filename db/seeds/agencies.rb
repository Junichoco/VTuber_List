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
  },
  {
    name: "V-Dere",
    location: "United States",
    description: "No description available.",
    website: "https://www.v-dere.moe/",
    yt_channel: "https://www.youtube.com/@V-Dere"
  },
  {
    name: "Phase Connect",
    location: "Canada",
    description: "A Canada-based VTuber agency. Also known as the \"sad girl company\". The CEO, Sakana, is known for pushing the talent to sell Phase Connect's proprietary coffee.",
    website: "https://phase-connect.com/",
    yt_channel: "https://www.youtube.com/@PhaseConnect"
  },
  {
    name: "Specialite",
    location: "Japan",
    description: "A VTuber agency owned by REALITY Studios with both Japanese- and English-speaking talent who mainly stream games.",
    website: "https://specialite.games/en/",
    yt_channel: "https://www.youtube.com/@Specialite_official"
  }
].each do |agency|
  if !Agency.find_by_name(agency[:name])
    puts "#{agency[:name]} created" if Agency.create!(agency)
  end
end
