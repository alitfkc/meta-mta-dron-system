yazitipidosya="panel/yazitipi.otf" --Metaya yazı tipini ekledikten sonra buraya gelip yazı tipini yazınız ve olduğu dosya türünü
--doğru yazınız aksi halde çalışmayacaktır. yazı tipini değiştirirken panel adlı dosyaya atınız ve 
--yazarken "panel/yazitipi.otf" "panel/<dosya>" şeklinde olmasına dikkat ediniz
yaztipibuyukpuntodeger=25 --Buraya yazı fontunun büyüklüğünü yazınız. yazdığınızda punto tümünde değişir kapatma butonunda olan x hariç.
yaztipiortapuntodeger=15 --Bu kapat bununda olan X'in yazı puntosu 
yaziyipikucukpuntodeger=6 --Bu da küçük punto değerleriniz için
yazitipidosya2="panel/yazitipi2.ttf" -- aynısını burada uygulayın bu el yazısı için yani üstteki server ismi
yaztipibuyukpuntodeger2=17 --punto büyüklüğü
serverismiyaz="Atatürk Gaming"-- server isminizi yazın
--[[
NOT:PUNTONUZU HER BUTONDA FARKLI AYARLAMAK İSTİYORSANIZ CLİENT.LUA'YI AÇIN FUNCTİON PANEL() YAZAN İŞLEVE GİRİN ORADA
HER BUTONA AİT guiSetFont ADLI SATIR VAR BUTONLARIN HANGİSİ HANGİSİNE AİT OLDUĞU DA BELLİ HANGİ BUTONDA KÜÇÜK
HANGİ BUTONDA BÜYÜK KULLANMAK İSTEDİĞİNİZİ AYARLAMAK İÇİN ÖRN: "  guiSetFont( oyuncakarababutonlabel, yazitipibuyuk)" 'yazitipibuyuk'
ADLI DEĞİŞKENİ ORTA PUNTO İÇİN 'yazitipiorta' YAZIN TIRNAKSIZ KÜÇÜK PUNTO İÇİN 'yazitipikucuk' YAZINIZ. 
EĞER 3 ADET DEĞİŞKEN YETMEZSE 4.PUNTO DEĞERİ LAZIM OLURSA LÜTFEN BENİMLE İLETİŞİME GEÇİN.
]]--
butonabasmasiniri=1 --Sürekli mesaj atıp oyuncunun oynunu kastırmaması için dron varken hala alma butonuna basıyorsa 2 mesaj sonra daha atmaycaktır. (n+1) şeklindedir 0 koyarsanız 1 kez atar sonra daha atmaz.n=sınır değeriniz

dronalansinir=200 --Dronun gidebileceği alan sınırı yazınız. 
--Örn dronalansinir=200 dron kontrolüne başladığı alan merkez olacak kare şekilde, 40.000br^2  alanda dron ile gezebilir 
--siz bunun sınırını dilediğiniz gibi belirleyebilirsiniz. Yalnız 0dan küçük olmamalı ve mta haritasından
lasventurasengel=true -- bu ayar turfların olduğu bölgede açmayı engellemek amacıyla yapılmıştır. false yaparak bunu kapatabilirsiniz

yasaklialanxalt=860  --Yasaklı alan için yasaklamak istediğiniz yerin dikeyde alt kenarına gidin ve /gp ile x değerini alıp buraya yazın
yasaklialanxust=2925  --Sonra dikeyde sınır olan üst kenara gidin /gp ile x değerini alın ve buraya yazın
yasaklialanysol=590  --Daha sonra yasaklamak istediğiniz alanın yatayda sol kenarına gidin ve /gp ile y değerini alın ve buraya yazın
yasaklialanysag=2885 -- Son olarak yatayda sağ kenara gidin ve /gp ile y değerini alın buraya yazın.
yasaklialanmesaj="Las Venturas'da dron kullanamazsın." -- Yasaklı alanda dron alınca çıkacak uyarı mesajı
oyuncuarabaziplamaizni=true --Bu ayarı false yaparsanız oyuncu oyuncak arabasıyla zıplayamaz
ziplamadeger=2.5 --Bu ayar oyuncu oyuncak arabasıyla ne kadar yükseğe zıplayabileceğini ayarlar çok yüksek yapmamanızı öneririm
--Eğer takıldığınız yer olursa lütfen benimle iletişime geçin. 
--Discord: Gangsta#6896
--Discord Destek Kanalım= https://discord.gg/e4f9uUbzys
--SÜRÜM 1.1 GANGSTA