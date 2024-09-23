require_relative "agency_names"

# Type this to run this file
#   rake db:seed:vtuber_batch_2
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all
[
  {
    name: "Non Anon",
    jp_name: "亜音ノン",
    description: "No description available.",
    agency: @indie,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@NonAnon",
    twitch_channel: "twitch.tv/notnonanon"
  },
  {
    name: "Chiaki Katsumi",
    jp_name: "千秋 勝美",
    description: "Feared and revered by many, Chiaki is the leader of the renowned hacker organization, Nylena. Though she tries to live up to her imposing title, her playful nature cannot be easily contained, and her gaming spirit runs strong.",
    agency: @pixellink,
    gender: "female",
    main_language: "English",
    birthday: "2020/02/03",
    debut_date: "2023/06/16",
    yt_channel: "https://www.youtube.com/@ChiakiKatsumi",
  },
  {
    name: "Miuna Usako",
    jp_name: "みうな兎子",
    description: "A once ordinary toy bunny brought magically back to life by an unknown force. Miuna is sure to win you over with her irresistible cuteness.",
    agency: @pixellink,
    gender: "female",
    main_language: "English",
    birthday: "2020/12/07",
    debut_date: "2023/06/16",
    yt_channel: "https://www.youtube.com/@MiunaUsako",
  },
  {
    name: "Nijyuna",
    jp_name: "にじゅな",
    description: "A singing rabbit born on the moon.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    debut_date: "2023/01/07",
    yt_channel: "https://www.youtube.com/@Nijyuuu7",
    twitch_channel: "twitch.tv/nijyuna"
  },
  {
    name: "Vesper Noir",
    jp_name: "ノワール・ヴェスパー",
    description: "It's his childish nature that allows him to speak so freely about his dreams. He might even actually let everyone around him dream.\nAdventurer's Guild TEMPUS's academic advisor.\nHe also holds the posts of custodian and arch-scholar at the Grand Library.\nLogical and rational at all times, he doesn't lift a finger unless completely convinced by something.\nHe has an aversion to sunlight due to spending too long cooped up, absorbed in his research.\n(Source: @holostars website)",
    agency: @holostars,
    gender: "male",
    main_language: "English",
    birthday: "2020/02/13",
    debut_date: "2022/07/24",
    yt_channel: "https://www.youtube.com/@NoirVesper",
    active: false
  },
  {
    name: "Josuiji Shinri",
    jp_name: "定水寺シンリ",
    description: "A ronin who is part of Adventurer's Guild TEMPUS.\n\nHas the appearance of a wandering samurai, but was widely renowned as a master of the longbow.\n\nSo famed was his prowess, they would say he could use anything as an arrow and yet never fail to hit his mark.\n\nHe went into isolation for a while, lamenting the futility of war,\n\nbut took up his bow and arrow once again after witnessing the young men fighting a pack of Corruption Beasts.\n\n(Source: @holostars website)",
    agency: @holostars,
    gender: "male",
    main_language: "English",
    birthday: "2020/06/23",
    debut_date: "2023/01/08",
    yt_channel: "https://www.youtube.com/@JosuijiShinri"
  },
  {
    name: "Shiratama Utano",
    jp_name: "白玖ウタノ",
    description: "A virtual utaite.",
    agency: @univirtual,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/09/03",
    yt_channel: "https://www.youtube.com/@UTANOch"
  },
  {
    name: "Kanna Yanagi",
    jp_name: "かんな柳",
    description: "A duck detective, or Ducktective as some would say, Kanna runs the Yanagi Detective Agency. With the help of her trusty Kamogumis, she is sure to uncover any mystery that dares challenge her investigative wits.\n(Source: @pixellink website)",
    agency: @pixellink,
    gender: "female",
    main_language: "English",
    birthday: "2020/09/15",
    debut_date: "2024/05/25",
    yt_channel: "https://www.youtube.com/@KannaYanagi"
  },
  {
    name: "Arisu Oshiro",
    jp_name: "アリス・オシロ",
    description: "An eldritch god turned princess, Arisu rules over a failing kingdom she unwillingly inherited. She now seeks to rebuild this kingdom out of sheer spite.\n(Source: @pixellink website)",
    agency: @pixellink,
    gender: "female",
    main_language: "English",
    birthday: "2020/03/02",
    debut_date: "2024/05/25",
    yt_channel: "https://www.youtube.com/@ArisuOshiro"
  },
  {
    name: "Chio Chompi",
    jp_name: "チオ・チョンピ",
    description: "Chio is a dinosaur.\n(Source: @pixellink website)",
    agency: @pixellink,
    gender: "female",
    main_language: "English",
    birthday: "2020/06/30",
    debut_date: "2024/05/25",
    yt_channel: "https://www.youtube.com/@ChioChompi"
  },
  {
    name: "Daiya Fortuna",
    jp_name: "ダイヤ・フォルトゥナ",
    description: "Owner of the Fortuna's Favor Casino, Daiya Fortuna is an infamous card dealer. She is constantly on the hunt for her next big gamble, ready to risk it all even if the odds aren't in her favor.\n(Source: @pixellink website)",
    agency: @pixellink,
    gender: "female",
    main_language: "English",
    birthday: "2020/08/15",
    debut_date: "2024/05/25",
    yt_channel: "https://www.youtube.com/@DaiyaFortuna"
  },
  {
    name: "MunMosh",
    jp_name: "むんもっしゅ",
    description: "A cat maid who plays guitar.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/04/01",
    debut_date: "2021/06/23",
    yt_channel: "https://www.youtube.com/@DaiyaFortuna"
  },
  {
    name: "Sparkle Kirara",
    jp_name: "閃 キララ",
    description: "A goddess cyborg and member of Vebop Project's Maboroshi Tomodachi Club.",
    agency: @vebop,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/01/31",
    debut_date: "2024/08/11",
    yt_channel: "https://www.youtube.com/@kirara_brdc"
  },
  {
    name: "Sango",
    jp_name: "さんご。",
    description: "A VTuber and illustrator who drew her own VTuber model. She does drawing and karaoke streams. She is also a member of the VTuber idol group SugaRy Ribb♡n.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    yt_channel: "https://www.youtube.com/@35sangosan"
  },
  {
    name: "Hasuki Rui",
    jp_name: "蓮希るい",
    description: "A Siberian husky puppy.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/11/01",
    yt_channel: "https://www.youtube.com/@HasukiCh"
  },
  {
    name: "Momose Hibana",
    jp_name: "百瀬ヒバナ",
    description: "A Virtual singer who lives on the other side of the world and sings songs that breathe life into the dead (those who have fallen).\n\nEmpty existence living in the other world. She not only sings, but also participates in writing lyrics, and is working to make her songs and voice resonate.\n\nCurrently has 10 cover songs and 3 original songs. She won the Grand Prix in an audition for a song by \"Grenge\" author Kayoko Kusano. She has also been selected as a member of the \"Ruminations Singing Project\" organized by Vocaloid P Reruriri.\n(Source: YouTube page)",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    yt_channel: "https://www.youtube.com/@hibanamomose"
  },
  {
    name: "Serenade Oxblood",
    jp_name: "セレナーデ・オックスブラッド",
    description: "A minotaur and member of Varium's 2nd generation.",
    agency: @varium,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/11/29",
    yt_channel: "https://www.youtube.com/@SerenadeOxblood"
  },
  {
    name: "Shinotsuki Lupi",
    jp_name: "紫月るぴ",
    description: "An otaku vampire idol.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    debut_date: "2024/08/02",
    yt_channel: "https://www.youtube.com/@Shinotsuki_Lupi"
  },
  {
    name: "Mochizuki Naco",
    jp_name: "餅月なこ",
    description: "No description available.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/10/10",
    debut_date: "2022/03/13",
    yt_channel: "https://www.youtube.com/@naco_mochizuki"
  },
  {
    name: "Kou Mariya",
    description: "A vampire who accidentally overslept for a few too many thousands of years, Kou Mariya navigates an unknown colorful world full of magic and mystery every single evening. Otaku to her core, Mariya dreams of creating an idol stage of her very own, one that beckons to fans from every world and realm with her songs!\n(Source: V4Mirai website)",
    agency: @v4mirai,
    gender: "female",
    main_language: "English",
    birthday: "2020/06/09",
    yt_channel: "https://www.youtube.com/@Kou_Mariya",
    twitch_channel: "twitch.tv/mariya"
  },
  {
    name: "Serina Maiko",
    description: "Far from her home Kingdom \"LeProphis\", Serina Maiko comes to us as a Princess abroad. She's far more invested in pursuing her love of dance and song than carrying out her royal duties. With her fiery passion to entertain, she will convince you why she belongs on stages, not in castles!\n(Source: V4Mirai website)",
    agency: @v4mirai,
    gender: "female",
    main_language: "English",
    birthday: "2020/05/23",
    yt_channel: "https://www.youtube.com/@SerinaMaiko",
    twitch_channel: "twitch.tv/serinamaiko"
  },
  {
    name: "Pina Pengin",
    jp_name: "辺銀ピナ",
    description: "A harpy-penguin healer and former member of PRISM Project. After the dissolution of PRISM Project, Pina and the other members of its 3rd generation became known as Requiem. She enjoys singing and writing and mixing songs.",
    agency: @indie,
    gender: "female",
    main_language: "English",
    birthday: "2020/11/06",
    debut_date: "2021/06/27",
    yt_channel: "https://www.youtube.com/@PinaPengin"
  }

].each do |vtuber|
  if !Vtuber.find_by_name(vtuber[:name])
    puts "#{vtuber[:name]} created" if Vtuber.create!(vtuber)
  end
end
