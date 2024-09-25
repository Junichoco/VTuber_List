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
  },
  {
    name: "Hoshimachi Suisei",
    jp_name: "星街すいせい",
    description: "A virtual idol with an exceptional love for songs and idols.\n\nShe puts endless amounts of hard work and energy into her dream of performing at the Budokan one day.\n\n(Source: Hololive website)",
    agency: @hololive,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/03/22",
    debut_date: "2018/03/22",
    yt_channel: "https://www.youtube.com/@HoshimachiSuisei"
  },
  {
    name: "Nianyan",
    jp_name: "にあにゃん",
    description: "A cat-human teahouse owner who loves tea.",
    agency: @indie,
    gender: "female",
    main_language: "English",
    birthday: "2020/12/03",
    debut_date: "2022/04/22",
    yt_channel: "https://www.youtube.com/@nianyanch"
  },
  {
    name: "Mari Yume",
    description: "Cat girl and personification of dreams. She is a VTuber model rigger and does tutorials on growing a VTuber channel. Her favorite saying is, \"Everything reminds you of something\"",
    agency: @indie,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@MariYumeCh",
    twitch_channel: "twitch.tv/mariyume"
  },
  {
    name: "Elia Stellaria",
    description: "No description available.",
    agency: @vdere,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@EliaStellaria",
    twitch_channel: "twitch.tv/eliastellaria"
  },
  {
    name: "Remilia Nephys",
    jp_name: "レミリア・ネフィス",
    description: "No description available.",
    agency: @phase,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@RemiliaNephys",
    twitch_channel: "https://www.twitch.tv/remilianephys"
  },
  {
    name: "Amanogawa Shiina",
    jp_name: "天ノ川 しいな",
    description: "A celestial seamstress and member of Phase Connect's 2nd generation, Alias. She is famous for buying a Yu-Gi-Oh! doujinshi revolving around Obelisk the Tormentor.",
    agency: @phase,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@AmanogawaShiina",
    twitch_channel: "twitch.tv/amanogawashiina"
  },
  {
    name: "Himemiya Rie",
    jp_name: "姫宮りえ",
    description: "The princess of the Regalia kingdom and member of Phase Connect's 2nd generation, Alias.",
    agency: @phase,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@HimemiyaRie",
    twitch_channel: "twitch.tv/himemiyarie"
  },
  {
    name: "Komachi Panko",
    jp_name: "小町ぱんこ",
    description: "A red panda who is a member of Phase Connect's 2nd generation, Alias.",
    agency: @phase,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@komachipanko",
    twitch_channel: "twitch.tv/komachipanko"
  },
  {
    name: "Chisaka Airi",
    jp_name: "千坂 アイリ",
    description: "A wolf and Lieutenant General of the Phase Army. She is a member of Phase Connect's 2nd generation, Alias.",
    agency: @phase,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@ChisakaAiri",
    twitch_channel: "twitch.tv/chisakaairi"
  },
  {
    name: "Erina Makina",
    jp_name: "エリナ・マキナ",
    description: "A cyborg tiger with no memories of her past life. She is a member of Phase Connect's 2nd generation, Alias.",
    agency: @phase,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@ErinaMakina",
    twitch_channel: "twitch.tv/erinamakina"
  },
  {
    name: "Pipkin Pippa",
    jp_name: "ピップキン・ピッパ",
    description: "The cutest rabbit in the universe - or so she would like you to thin- \"PIPIPIPI!\"\n(Source: Phase Connect website)",
    agency: @phase,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@PipkinPippa",
    twitch_channel: "https://www.twitch.tv/pippa"
  },
  {
    name: "Aki Rosenthal",
    jp_name: "アキ・ローゼンタール",
    description: "A half-elf from another world, she has an insatiable curiosity and cannot resist exploring anything that piques her interest. Her trademark pigtails float due to some sort of supernatural power.\n(Source: Hololive website)",
    agency: @hololive,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/02/17",
    debut_date: "2018/06/01",
    yt_channel: "https://www.youtube.com/@AkiRosenthal"
  },
  {
    name: "Akai Haato",
    jp_name: "赤井はあと",
    description: "A sassy kouhai. She is often prickly, but she'll try to get a lot of attention from those who have made friends with her. She loves red ribbons and heart shapes, and she'll wear them often in her hair and on her clothes.\n(Source: Hololive website)",
    agency: @hololive,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/08/10",
    debut_date: "2018/06/02",
    yt_channel: "https://www.youtube.com/@AkaiHaato"
  },
  {
    name: "Hitsugi Miki",
    jp_name: "火継みき",
    description: "An anime and game enthusiast with a shy and sweet, yet naive personality. She has a chuunibyou persona where she believes she's the Spirit of Fire, although she lacks actual powers.\n(Source: Specialite website)",
    agency: @specialite,
    gender: "female",
    main_language: "English",
    birthday: "2020/10/14",
    debut_date: "2023/12/03",
    yt_channel: "https://www.youtube.com/@MikiHitsugi"
  },
  {
    name: "Akumiya Miu",
    jp_name: "あくみゃみう",
    description: "A student council president who comes off as cold and strict due to rumors about her background, but is not all true. Her secret hobby is gaming and making witty roasts with a straight face after school.\n(Source: Specialite website)",
    agency: @specialite,
    gender: "female",
    main_language: "English",
    birthday: "2020/02/22",
    debut_date: "2023/12/03",
    yt_channel: "https://www.youtube.com/@MiuAkumiya"
  },
  {
    name: "Utahime Mochizuki",
    jp_name: "望月歌姫",
    description: "The daughter of powerful mages who controlled the sun and moon, strives to become a mage capable of controlling weather with the help of her loyal chimera friend.\n(Source: Specialite website)",
    agency: @specialite,
    gender: "female",
    main_language: "English",
    birthday: "2020/08/26",
    debut_date: "2023/12/03",
    yt_channel: "https://www.youtube.com/@UtahimeMochizuki",
    twitch_channel: "twitch.tv/utahime_mochi"
  },
  {
    name: "Victoria Valerie",
    jp_name: "ヴィクトリア・ヴァレリー",
    description: "A government agent overseeing the supernatural and extraterrestrial. Recently promoted, she's now responsible for training new recruits.\n(Source: Specialite website)",
    agency: @specialite,
    gender: "female",
    main_language: "English",
    birthday: "2020/04/18",
    debut_date: "2023/12/03",
    yt_channel: "https://www.youtube.com/@Victoria-Valerie",
    twitch_channel: "twitch.tv/victoria_valerie"
  },
  {
    name: "Lucien Lunaris",
    jp_name: "ルシエン・ルナリス",
    description: "A vampire who has lived for hundreds of years, he has somehow lost his memories and can only vaguely remember his past. He wanders the world searching for peace and a place to call home.\n\n(Source: FSP EN website)",
    agency: @fspen,
    gender: "male",
    main_language: "English",
    birthday: "2020/10/19",
    debut_date: "2024/01/28",
    yt_channel: "https://www.youtube.com/@LucienLunaris"
  },
  {
    name: "Rosco Graves",
    jp_name: "ロスコ・グレイヴス",
    description: "A zombie boy who was thrust into a new world near the start of his undeath. Even though he’s a corpse, his rowdiness and quick-wit would convince you otherwise.\n\n(Source: FSP EN website)",
    agency: @fspen,
    gender: "male",
    main_language: "English",
    birthday: "2020/07/08",
    debut_date: "2024/01/28",
    yt_channel: "https://www.youtube.com/@roscograves"
  },
  {
    name: "Zander Netherbrand",
    jp_name: "ザンダー・ネザーブランド",
    description: "An alluring incubus who seeks freedom, power, and to live as he desires. No matter the consequences.\n\n(Source: FSP EN website)",
    agency: @fspen,
    gender: "male",
    main_language: "English",
    birthday: "2020/04/07",
    debut_date: "2024/01/28",
    yt_channel: "https://www.youtube.com/@ZanderNetherbrand"
  },
  {
    name: "Gale Galleon",
    jp_name: "ゲイル・ガレオン",
    description: "A charismatic captain and leader of the most feared pirate crew of his time. During the Age of Discovery, he was a wanted man who crossed swords with many dangerous pirates and amassed bountiful treasures.\n\n(Source: FSP EN website)",
    agency: @fspen,
    gender: "male",
    main_language: "English",
    birthday: "2020/12/09",
    debut_date: "2024/01/28",
    yt_channel: "https://www.youtube.com/@galegalleon",
    twitch_channel: "twitter.com/GaleGalleon"
  },
  {
    name: "Cassian Floros",
    jp_name: "ゲイル・ガレオン",
    description: "A narcissistic elf whose strength lies in combat and magic. He seeks for a greater destiny in life and is willing to associate himself with lower beings to pursue such a purpose.\n\n(Source: FSP EN website)",
    agency: @fspen,
    gender: "male",
    main_language: "English",
    birthday: "2020/11/19",
    debut_date: "2024/01/28",
    yt_channel: "https://www.youtube.com/@CassianFloros"
  },
  {
    name: "Shirakawa Shirase",
    jp_name: "白河しらせ",
    description: "A VTuber part of the group Blitz Wing from Riot Music.",
    agency: @riot,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/11/28",
    debut_date: "2023/06/24",
    yt_channel: "https://www.youtube.com/@SHIRASESHIRAKAWA"
  },
  {
    name: "Matsunaga Iori",
    jp_name: "松永依織",
    description: "A VTuber part of the group Blitz Wing from Riot Music. She joined Riot Music in November 2020 after passing the Riot Music Artist Audition Vol. 1.",
    agency: @riot,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/02/02",
    yt_channel: "https://www.youtube.com/@IORIMATSUNAGA"
  },
  {
    name: "Raifa",
    jp_name: "ライファ",
    description: "A shy cat with a fish plushie named Zane-kun. Loves noodles.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/12/07",
    yt_channel: "https://www.youtube.com/@Raifa_ch"
  },
  {
    name: "Kotoha",
    jp_name: "ライファ",
    description: "A supporting member of the Vocaloid group HoneyWorks and part of the vocal unit Hakoniwa Lily.",
    agency: @aice,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/06/10",
    yt_channel: "https://www.youtube.com/@Kotoha_ktnh",
    twitch_channel: "twitch.tv/kotoha_hkll"
  },
  {
    name: "Ibara Muan",
    jp_name: "茨むあん",
    description: "No description available.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    debut_date: "2021/05/02",
    yt_channel: "https://www.youtube.com/@ibaramuan"
  },
  {
    name: "Tomori Manaka",
    jp_name: "灯里愛夏",
    description: "No description available.",
    agency: @valiv,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/07/01",
    yt_channel: "https://www.youtube.com/@TomoriManaka"
  },
  {
    name: "mei",
    jp_name: "芽唯",
    description: "The princess of the chickens. Likes fried chicken.",
    agency: @indie,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/07/27",
    debut_date: "2021/05/02",
    yt_channel: "https://www.youtube.com/@-mei-9020"
  },
  {
    name: "Aimee",
    description: "A plague doctor.",
    agency: @indie,
    gender: "female",
    main_language: "English",
    yt_channel: "https://www.youtube.com/@Aimee_exe"
  },
  {
    name: "Kai Saikota",
    description: "A dragon god.",
    agency: @idolen,
    gender: "female",
    main_language: "Japanese",
    birthday: "2020/07/27",
    debut_date: "2021/05/02",
    yt_channel: "https://www.youtube.com/@KaiSaikota",
    twitch_channel: "twitch.tv/kaisaikota"
  }


].each do |vtuber|
  if !Vtuber.find_by_name(vtuber[:name])
    puts "#{vtuber[:name]} created" if Vtuber.create!(vtuber)
  end
end
