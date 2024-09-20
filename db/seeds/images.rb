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
  { name: "Ririsya", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726856589/ririsya_thumb_qri0yb.png"}
]

images.each do |t|
  vtuber = Vtuber.find_by_name(t[:name])
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
