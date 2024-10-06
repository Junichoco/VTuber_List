require "open-uri"

# Type this to run this file
#   rake db:seed:images
# To run all the seeds file in the db/seeds folder, run this command
#   rake db:seed:all

images = [
  { name: "Tokino Sora", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726620184/sora_thumb_ks11n1.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726592274/unnamed-file-6-556x1000_gbxv1j.png"},
  { name: "Usada Pekora", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726635956/pekora_thumb_fizd7q.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728190967/pekora_3_scxsba.png"},
  { name: "Sakura Miko", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726636318/miko_thumb_bhmqda.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1725172756/development/q1rvfwgts0dsxicivueurke7ulcl.png" },
  { name: "Raki Kazuki", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726987847/raki_thumb_2_rhmnnq.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726987996/raki_full_2_efv2ow.png"},
  { name: "Amelie Kanon", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726634057/amelie_thumb_m1gp5h.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728191652/image07_nhqzoe.jpg"},
  { name: "Mori Calliope", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726638300/Mori_Calliope_Portrait_xy8t3l.webp", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728191229/Mori-Calliope_pr-img_02_ve4j1n.png"},
  { name: "Gavis Bettel", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727833402/bettel_thumb_onlsaa.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727833403/bettel_lzjzar.png"},
  { name: "Minato Aqua", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726638300/Minato_Aqua_Portrait_zhgxz9.webp", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728191305/Minato-Aqua_kpcucm.png"},
  { name: "Axel Syrios", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726640061/axel_thumb_2_viqdel.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728191567/Axel_nwffxe.png"},
  { name: "KAF", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726639294/kaf_thumb_m57i5z.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728191608/kaf_kevuio.png"},
  { name: "Phoebe Chan", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726673208/phoebe_thumb_dbarum.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726675426/phoebe_2_pizxvf.jpg"},
  { name: "Lottie Shinju", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726759317/lottie_thumb_qszmjt.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726759689/lottie_uberkm.png"},
  { name: "Non Anon", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726760260/non_thumb_n7zxcg.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726760261/non_full_au8o67.png" },
  { name: "Kohaku Nuino", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726760762/nuino_thumb_gz4w5m.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726760761/nuino_lijspg.jpg"},
  { name: "Amana Nia", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726857470/nia_thumb_iv9vli.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726857469/nia_full_2_wdhcwt.png"},
  { name: "Takanashi Yutoha", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726762518/yutoha_thumb_m3iduc.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728192388/yutoha_ou17j4.png"},
  { name: "Enma Ruri", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726766448/ruri_thumb_mvku03.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726766447/ruri_a1p7ni.jpg"},
  { name: "Aoi Neno", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726855112/neno_thumb_yjtw0v.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726855207/neno_full_loia75.png"},
  { name: "Misora Sora", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726855799/misora_sora_thumb_fkiooi.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726855799/misora_sora_2_kdsmtd.jpg" },
  { name: "Ririsya", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726856589/ririsya_thumb_qri0yb.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727268745/ririsya2_goejdx.png"},
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
  { name: "Hoshifuri Iku", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726967387/iku_thumb_bprwdn.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1726967388/iku_3_rrd6bu.png"},
  { name: "Mochizuki Naco", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727074588/naco_thumb_lnymk0.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727074588/naco_tcn8fg.jpg"},
  { name: "Kou Mariya", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727074990/mariya_thumb_v8syso.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727074991/mariya_2_mcqw5w.png"},
  { name: "Pina Pengin", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727077107/pina_thumb_r5asov.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727077108/pina_2_el2bgh.png"},
  { name: "RIM", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727080080/rim_thumb_orxbvn.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727080080/rim_p0myof.jpg"},
  { name: "Hoshimachi Suisei", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727101194/suisei_thumb_nfkc1r.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727101195/Hoshimachi-Suisei_pr-img_01-734x1440_rj2ivh.png"},
  { name: "Banzoin Hakka", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727101419/hakka_thumb_yudosm.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727101420/Banzoin-Hakka_pr-img_02_ckn6xb.png"},
  { name: "Nianyan", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727102261/nianyan_thumb_ki5l7j.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1725179087/development/ndskd6dhqk362w5gcxd75ej6kdpg.jpg"},
  { name: "Mari Yume", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727103125/mari_yume_thumb_bfauwx.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727103127/mari_yume_oq6cbc.png" },
  { name: "Amanogawa Shiina", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727498767/shiina_thumb_2_kkinyq.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727176936/shiina_re3af8.png"},
  { name: "Himemiya Rie", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727176935/rie_thumb_syuh8t.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727176936/rie_ka7fuv.png"},
  { name: "Chisaka Airi", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727177069/Airi_thumb_ilko0w.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727177070/airi_arpxr4.png"},
  { name: "Akai Haato", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727187481/Aki_thumb_jbwdyr.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727187750/Akai-Haato_pr-img_01_eb4z2q.png"},
  { name: "Aki Rosenthal", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727187481/Aki_thumb_jbwdyr.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727187482/aki_xzlzvv.png"},
  { name: "Remilia Nephys", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727187905/remi_thumb_in233t.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727187907/Remi-Character_wbkmhx.png"},
  { name: "Komachi Panko", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727187990/panko_thumb_f0nlkz.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727187990/Panko-Character_ugkvqb.png"},
  { name: "Erina Makina", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727188124/Erina_thumb_kva9y1.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727188125/Erina-Banner_zxxuol.png"},
  { name: "Pipkin Pippa", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727189404/pippa_thumb_bemapb.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727189405/pippa_x15nbh.png"},
  { name: "Hitsugi Miki", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727191694/miki_thumb_2_b0xm5t.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727191692/miki_fr3rdq.jpg"},
  { name: "Akumiya Miu", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727191692/miu_thumb_eqbiu4.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727192007/miu_main_f15ca1.png"},
  { name: "Utahime Mochizuki", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727191694/utahime_thumb_qgedk9.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727191692/utahime_tec8ab.jpg"},
  { name: "Victoria Valerie", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727192335/victoria_thumb_ygpgh3.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727192007/victoria_main_sndqh1.png"},
  { name: "Lucien Lunaris", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727252282/lucien_thumb_pkxfko.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727252283/lucien_rjumpu.png"},
  { name: "Rosco Graves", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727252532/rosco_thumb_qlserz.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727252532/rosco_2_bv1fls.png"},
  { name: "Zander Netherbrand", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727269368/zander_thumb_mjq9uv.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727269366/zander_ykv6lt.jpg"},
  { name: "Shirakawa Shirase", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727267611/shirase_thumb_2_vb9wkq.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727267610/shirase_oghmc9.png"},
  { name: "Matsunaga Iori", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727267611/iori_thumb_rsmyq2.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727267613/iori2_pc_aabqdq.png"},
  { name: "Raifa", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727270412/raifa_thumb_yr0nxz.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727270422/raifa_3_yydnue.png"},
  { name: "Kai Saikota", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727277530/kai_thumb_canbix.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727277531/EC__9_Kai_20240426_whokof.png"},
  { name: "Kotoha", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727277721/kotoha_thumb_ejzjb4.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727277720/kotoha_2_yvb0uq.jpg"},
  { name: "Ibara Muan", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727277661/muan_thumb_obwkaf.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727277660/muan_xltlgo.jpg"},
  { name: "Nova Aokami", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727448403/nova_thumb_qjpikd.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727448117/Nova-Transparent-637x1024_mk3uti.png"},
  { name: "Maisaki Berry", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727448404/berry_thumb_ru9atk.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727448207/berry_tcamk6.png"},
  { name: "Sakusu Mayo", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727449460/sakusu_thumb_zwolob.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727449461/sakusu_5_rcxr4z.png"},
  { name: "Aoi Sui", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727495175/sui_thumb_y11pgj.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727495176/sui_zethjl.jpg"},
  { name: "MiCosmiC baby", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727495265/micosmic_thumb_tksgce.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727495264/micosmic_3_j7lbj4.jpg"},
  { name: "Tachibana Shiena", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727524907/shiena_thumb_nv30nh.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727525047/shiena_hmpyml.png"},
  { name: "Amami Kurine", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727524908/kurine_thumb_yp9niv.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727524909/kurine_ppisol.png"},
  { name: "Urameshi Conta", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727533157/conta_thumb_qqglzy.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727533163/conta_h2t0zy.png"},
  { name: "Mochi Hiyoko", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727602222/hiyoko_thumb_g9zkc0.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727602223/hiyoko_lrplq1.png"},
  { name: "Kouzuki Miya", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727603032/miya_thumb_j0t1m6.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727603032/miya_2_j4j2mf.jpg"},
  { name: "Ci-chan", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727603640/ci-chan_thumb_gd7vc9.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727603639/ci-chan_2_w8tinc.jpg"},
  { name: "Gaochan", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727626960/gaochan_thumb_qufcmj.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727626960/gaochan_mrfgel.png"},
  { name: "Inuzuki Ren", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727628441/inuzuki_thumb_2_lpj1k3.jpg", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727628441/inuzuki_hvzugp.jpg"},
  { name: "Nanami Urara", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727629625/urara_thumb_2_ydlpj5.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727629282/urara_gygvu0.jpg"},
  { name: "Mashiro Meronya", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727651978/meronya_thumb_obm8p1.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727651978/meronya_2_anu0wg.jpg"},
  { name: "Aoi", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727653886/aoi_thumb_2_y2wbuk.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727653761/aoi_5_bdn3ls.png"},
  { name: "Mirea Sheltzs", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727686985/mirea_thumb_qyqzyt.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727686986/mirea_wp2p93.jpg"},
  { name: "Uchi Fifi", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727687289/fifi_thumb_kmpopm.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727687293/FIFI_j4ns1t.png"},
  { name: "Amahane Miran", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727717615/miran_thumb_kxbtlm.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727717498/Fjis48XakAQ7b8r_evkl9k.jpg"},
  { name: "Anya Kumori", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727741832/kumori_thumb_u58k37.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727741832/kumori_sxa0xo.jpg"},
  { name: "Sakura Rina", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727803748/sakura_rina_thumb_m0ccij.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727803747/sakura_rina_jyqe7n.jpg"},
  { name: "Pippa Pebblesworth", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727832529/pebblesworth_thumb_qzk23n.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727832530/pebblesworth_up69yw.png"},
  { name: "Shishigami Leona", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727832864/reona_thumb_shrcpn.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727832865/reona_av2ete.png"},
  { name: "Uchida Shu", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727833612/shu_vtuber_thumb_bsztjh.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727833609/shu_vtuber_dsbn1m.jpg"},
  { name: "Nemupipi", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727923586/nemupipi_thumb_sykgnh.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727923586/nemupipi_tnkmar.jpg"},
  { name: "Morino Merun", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727963113/merun_thumb_haqnic.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727963114/merun_4_eldfbk.jpg"},
  { name: "Kotomiya Iori", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727966461/kotomiya_iori_thumb_kiu9la.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1727966555/kotomiya_iori_i9drlo.png"},
  { name: "Tokiwa Aino", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728104954/tokiwa_thumb_bqfubo.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728104955/tokiwa_d3dguu.jpg"},
  { name: "Azumalim", thumb: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728106049/azumalim_thumb_vbr6a2.png", vert: "https://res.cloudinary.com/dpvghmrgw/image/upload/v1728106063/azumalim_2_ifpwxd.jpg"}
]

puts "Thumbnails"
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

puts "Vertical pictures"
images.each do |t|
  vtuber = Vtuber.find_by_name(t[:name])
  if !vtuber
    puts "Cannot find #{t[:name]}"
    abort
  end

  if !vtuber.vertical_picture.attached?
    if vtuber.set_vertical_picture(t[:vert])
      puts "#{vtuber.name}'s vertical picture attached"
    else
      return "#{vtuber.name}'s vertical picture failed"
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
