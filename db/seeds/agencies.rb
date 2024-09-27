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
  },
  {
    name: "First Stage Production",
    location: "Japan",
    description: "A VTuber agency owned by REALITY Studios. It has an English branch that focuses on male VTubers.",
    website: "https://https://firststage-pro.com/",
    yt_channel: "https://www.youtube.com/@1stpro_official"
  },
  {
    name: "First Stage Production EN",
    location: "Japan",
    description: "The English branch of First Stage Production, a VTuber agency owned by REALITY Studios. It focuses on male VTubers.",
    website: "https://https://firststage-pro.com/en/",
    yt_channel: "https://www.youtube.com/@fsp_english"
  },
  {
    name: "Riot Music",
    location: "Japan",
    description: "A music label owned by Brave Group.",
    website: "https://riot-music.com/",
    yt_channel: "https://www.youtube.com/@RIOTMUSIC_OFFICIAL"
  },
  {
    name: "Aice Class",
    location: "Japan",
    description: "Aice Class (pronounced \"Ice Class\") is a VTuber agency organized by the Vocaloid group HoneyWorks. It has a school theme, and members are grouped into a music artist, idol, and illustrator department.",
    website: "https://aiceclass.com/",
    yt_channel: "https://www.youtube.com/@aiceclass"
  },
  {
    name: "vα-liv",
    location: "Japan",
    description: "vα-liv (pronounced \"via-live\" or \"vee-alive\") is an idol project part of the Idolm@ster franchise.",
    website: "https://idolmaster-official.jp/va-liv",
    yt_channel: "https://www.youtube.com/@project_imas_va-liv"
  },
  {
    name: "NoriPro",
    location: "Japan",
    description: "A VTuber agency created by the mangaka Tsukudani Norio.",
    website: "https://noripro.jp/"
  },
  {
    name: "Neo-Porte",
    location: "Japan",
    description: "A virtual talent agency founded by the Crazy Raccoon CEO CR Ojiji, the utaite soraru and mafumafu, and the VTuber Shibuya HAL.
    ",
    website: "https://neo-porte.jp/",
    yt_channel: "https://www.youtube.com/@neoporte-office"
  },
  {
    name: "VReverie",
    location: "Singapore",
    description: "A Singapore-based VTuber agency founded in 2021.",
    website: "https://v-reverie.com/"
  },
  {
    name: "idol-ES",
    location: "United States",
    description: "The Spanish-speaking branch of Idol Corp.",
    website: "https://idol-company.com/"
  }
].each do |agency|
  if !Agency.find_by_name(agency[:name])
    puts "#{agency[:name]} created" if Agency.create!(agency)
  end
end
