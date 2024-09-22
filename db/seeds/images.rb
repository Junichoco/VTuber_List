require "open-uri"

# Type this to run this file
#   rake db:seed:images
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

# file = File.open(File.join(Rails.root,"app/assets/images/raki thumb.jpg"))
# raki.thumbnail.attach(
#   io: file,
#   filename: "thumb.png"
# )
# if raki.save
#   puts "Raki's thumbnail saved"
# else
#   puts raki.errors.full_messages
# end

images = [
  { name: "Tokino Sora", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726620184/sora_thumb_ks11n1.png" },
  { name: "Usada Pekora", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726635956/pekora_thumb_fizd7q.png"},
  { name: "Sakura Miko", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726636318/miko_thumb_bhmqda.png" },
  { name: "Amelie Kanon", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726634057/amelie_thumb_m1gp5h.png"},
  { name: "Mori Calliope", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726638300/Mori_Calliope_Portrait_xy8t3l.webp"},
  { name: "Gavis Bettel", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726638498/bettel_thumb_taac2a.png"},
  { name: "Minato Aqua", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726638300/Minato_Aqua_Portrait_zhgxz9.webp"},
  { name: "Axel Syrios", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726640061/axel_thumb_2_viqdel.png"},
  { name: "KAF", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726639294/kaf_thumb_m57i5z.png"},
  { name: "Phoebe Chan", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726673208/phoebe_thumb_dbarum.png"},
  { name: "Lottie Shinju", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726759317/lottie_thumb_qszmjt.png"},
  { name: "Non Anon", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726760260/non_thumb_n7zxcg.png" },
  { name: "Kohaku Nuino", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726760762/nuino_thumb_gz4w5m.png"},
  { name: "Amana Nia", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726857470/nia_thumb_iv9vli.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726857469/nia_full_2_wdhcwt.png"},
  { name: "Takanashi Yutoha", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726762518/yutoha_thumb_m3iduc.png"},
  { name: "Enma Ruri", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726766448/ruri_thumb_mvku03.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726766447/ruri_a1p7ni.jpg"},
  { name: "Aoi Neno", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726855112/neno_thumb_yjtw0v.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726855207/neno_full_loia75.png"},
  { name: "Misora Sora", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726855799/misora_sora_thumb_fkiooi.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726855799/misora_sora_2_kdsmtd.jpg" },
  { name: "Ririsya", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726856589/ririsya_thumb_qri0yb.png"},
  { name: "Iguchi Sun", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726898642/iguchi_thumb_ruvnev.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726898642/iguchi_sun_wlnjzn.jpg"},
  { name: "yayamugi", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726899536/yayamugi_thumb_fi196y.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726899537/yayamugi_5_rjwwn1.png"},
  { name: "Figaro", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726900299/figaro_thumb_tlpfty.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726900298/figaro_lixgkv.jpg"},
  { name: "Hiiragi Youri", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726900604/youri_thumb_jkxxwg.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726900587/youri_uqsw24.jpg"},
  { name: "Sorakana Ito", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726900079/sorakana_thumb_zwy57t.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726900080/sorakana_zmqan9.png"},
  { name: "Kanna Yanagi", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964385/kanna_thumb_ezztjz.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726963808/kanna_lv7pn8.png"},
  { name: "Arisu Oshiro", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964384/arisu_thumb_jne5mi.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964384/arisu_z96zgb.png"},
  { name: "Chio Chompi", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964384/chio_thumb_ny7zmf.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726963807/chio_y4tjoy.png"},
  { name: "Daiya Fortuna", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964385/daiya_thumb_wb7vrc.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726963808/daiya_kgbbqf.png"},
  { name: "Miuna Usako", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964945/miuna_thumb_opih4y.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964830/miuna_p5c9a6.png"},
  { name: "Chiaki Katsumi", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964945/chiaki_thumb_sttook.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726964830/chiaki_a2q8nw.png"},
  { name: "MunMosh", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726966119/munmosh_thumb_zeaimu.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726966120/munmosh_4_kvamk4.jpg"},
  { name: "Hoshifuri Iku", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726967387/iku_thumb_bprwdn.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726967388/iku_3_rrd6bu.png"}
]

images.each do |t|
  vtuber = Vtuber.find_by_name(t[:name])
  if !vtuber
    puts "Cannot find #{t[:name]}"
    abort
  end

  if !vtuber.thumbnail.attached?
    if vtuber.set_thumbnail(t[:thumb])
      puts "#{vtuber.name}'s thumbnail attached"
    else
      return "#{vtuber.name}'s thumbnail failed"
    end
  end
end

  # file = URI.parse(thumb).open
  #   vertical_picture.attach(
  #   io: file,
  #   filename: "vertical_picture.png"
  #   )
  #   return save
  # end
