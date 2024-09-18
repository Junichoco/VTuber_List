require "open-uri"



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

thumbnails = [
  { name: "Tokino Sora", url: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726620184/sora_thumb_ks11n1.png"}
]

thumbnails.each do |url|
file = URI.parse(url).open
  vertical_picture.attach(
  io: file,
  filename: "vertical_picture.png"
  )
  return save
end
