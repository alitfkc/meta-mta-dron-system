--DEĞİŞKENLER DOKUNMAYINIZ
 local dronkontrol=false
 local screenW, screenH = guiGetScreenSize()
 local altyazizamanlayicidegisken=false
 destroylananaracid=0
 altyazisure=false
 ziplamazaman=false
 butonmaksbasmadeger=0
  panelacmadeger=false
function centerWindow(center_window) --panel ortalama
  local screenW,screenH=guiGetScreenSize()
  local windowW,windowH=guiGetSize(center_window,false)
  local x,y = (screenW-windowW)/2,(screenH-windowH)/2
  guiSetPosition(center_window,x,y,false)
end
function panel() --PANEL GENEL AYARLARI
  showCursor ( true ) 
  --panel genel ayarları
  main = guiCreateWindow(250, 250, 232, 125, "ATATÜRK GAMİNG", false)
  centerWindow( main )
  --oyuncakaraba butonu ayarları
  oyuncakarababuton = guiCreateButton(10,25,100,40, "ARABA", false, main)


  --insansizhavaaraci butonu ayarları
  insansizhavaaracibuton = guiCreateButton(10,75,100,40, "JET", false, main)

  --dron butonu ayarları
  dronbuton = guiCreateButton(122,25,100,40, "DRON", false, main)

  --robot butonu ayarları
  robotbuton = guiCreateButton(122,75,100,40, "ROBOT", false, main)


  --kapat butonu ayarları
  kapatbuton = guiCreateButton(212.5,2.5,15,15, "X", false, main)
end
function butonabasma() --BUTONA BASINCA YAPILAN GENEL AYARLAR
  --Oyuncak araba dronuna basılınca
   if source == oyuncakarababuton and dronkontrol==false then
    local arabadamioyuncu=isPedInVehicle(localPlayer)
    local oyuncuarabasi=getPedOccupiedVehicle(localPlayer)
    if oyuncuarabasi==false then 
    else
      local oyuncuarabasimodel=getElementModel(oyuncuarabasi)
    end
    if arabadamioyuncu==false or oyuncuarabasimodel==441 or oyuncuarabasimodel==464 or oyuncuarabasimodel==594 or oyuncuarabasimodel==501 then 
      px,py,pz=getElementPosition(getLocalPlayer())
      if lasventurasengel==true then
       if px>= yasaklialanxalt and px<=yasaklialanxust and py>=yasaklialanysol and py<=yasaklialanysag then
         outputChatBox(yasaklialanmesaj,255,0,0)
       else
 
         triggerServerEvent("araba",localPlayer)
         bindKey("x","down",sabitdronmodu)
         bindKey("lshift","down",zipla)
         bindKey("n","down",dronubirak)
         addEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
         addEventHandler ( "onClientPreRender", root, menzil )

         addEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
         dronkontrol=true
         toggleControl("enter_exit",false)
       --timer ayarlama değişkenleri
          altyazisure=false
          altyazizamanlayicidegisken=false
          butonmaksbasmadeger=0
          birakmabutonubasmadeger=0
         guiSetVisible(main,false)
         showCursor(false)
         panelacmadeger=false
       end
 
      else
       triggerServerEvent("araba",localPlayer)
       bindKey("x","down",sabitdronmodu)
       bindKey("lshift","down",zipla)
       bindKey("n","down",dronubirak)
       addEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
       addEventHandler ( "onClientPreRender", root, menzil )
       addEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
       dronkontrol=true
       toggleControl("enter_exit",false)
       --timer ayarlama değişkenleri
        altyazisure=false
        altyazizamanlayicidegisken=false
        butonmaksbasmadeger=0
        birakmabutonubasmadeger=0
       guiSetVisible(main,false)
       showCursor(false)
       panelacmadeger=false
      end
    elseif  butonmaksbasmadeger<=butonabasmasiniri then
      outputChatBox("Araçta kullanamazsın!",255,0,0)
      butonmaksbasmadeger=butonmaksbasmadeger+1
    end
   elseif source == oyuncakarababuton and dronkontrol==true and butonmaksbasmadeger<=butonabasmasiniri then
    outputChatBox("Daha fazla uzaktan kumandalı araba alamazsın önce aldığını kapat.",255,0,0)
    butonmaksbasmadeger=butonmaksbasmadeger+1
  end

  --Helikopter dronuna basılınca
   if source == dronbuton and dronkontrol==false then
    local arabadamioyuncu=isPedInVehicle(localPlayer)
    local oyuncuarabasi=getPedOccupiedVehicle(localPlayer)
    if oyuncuarabasi==false then 
    else
      local oyuncuarabasimodel=getElementModel(oyuncuarabasi)
    end
    if arabadamioyuncu==false or oyuncuarabasimodel==441 or oyuncuarabasimodel==464 or oyuncuarabasimodel==594 or oyuncuarabasimodel==501 then 
      px,py,pz=getElementPosition(getLocalPlayer())
      if lasventurasengel==true then
       if px>= yasaklialanxalt and px<=yasaklialanxust and py>=yasaklialanysol and py<=yasaklialanysag then
         outputChatBox(yasaklialanmesaj,255,0,0)
       else
         triggerServerEvent("hdron",localPlayer)
         bindKey("x","down",sabitdronmodu)
         bindKey("lshift","down",zipla)
         bindKey("n","down",dronubirak)
         addEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
         addEventHandler ( "onClientPreRender", root, menzil )

         addEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
         dronkontrol=true
         toggleControl("enter_exit",false)
          --timer ayarlama
           altyazisure=false
           altyazizamanlayicidegisken=false
           butonmaksbasmadeger=0
           birakmabutonubasmadeger=0
         guiSetVisible(main,false)
         showCursor(false)
         panelacmadeger=false
       end
 
      else
       triggerServerEvent("hdron",localPlayer)
       bindKey("x","down",sabitdronmodu)
       bindKey("lshift","down",zipla)
       bindKey("n","down",dronubirak)
       addEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
       addEventHandler ( "onClientPreRender", root, menzil )
       addEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
       dronkontrol=true
       toggleControl("enter_exit",false)
     --timer ayarlama değişkenleri
        altyazisure=false
        altyazizamanlayicidegisken=false
        butonmaksbasmadeger=0
        birakmabutonubasmadeger=0
       guiSetVisible(main,false)
       showCursor(false)
       panelacmadeger=false
      end
    elseif butonmaksbasmadeger<=butonabasmasiniri then
      outputChatBox("Araçta kullanamazsın!",255,0,0)
      butonmaksbasmadeger=butonmaksbasmadeger+1
    end
   elseif source == dronbuton and dronkontrol==true and  butonmaksbasmadeger<=butonabasmasiniri then
    outputChatBox("Daha fazla dron alamazsın önce aldığını kapat.",255,0,0)
    butonmaksbasmadeger=butonmaksbasmadeger+1
  end

  --iha dronuna basılınca
   if source == insansizhavaaracibuton and dronkontrol==false then
    local arabadamioyuncu=isPedInVehicle(localPlayer)
    local oyuncuarabasi=getPedOccupiedVehicle(localPlayer)
    if oyuncuarabasi==false then 
    else
      local oyuncuarabasimodel=getElementModel(oyuncuarabasi)
    end
    if arabadamioyuncu==false or oyuncuarabasimodel==441 or oyuncuarabasimodel==464 or oyuncuarabasimodel==594 or oyuncuarabasimodel==501 then 
      px,py,pz=getElementPosition(getLocalPlayer())
      if lasventurasengel==true then
       if px>= yasaklialanxalt and px<=yasaklialanxust and py>=yasaklialanysol and py<=yasaklialanysag then
         outputChatBox(yasaklialanmesaj,255,0,0)
       else
         triggerServerEvent("insansizdron",localPlayer)
         bindKey("x","down",sabitdronmodu)
         bindKey("lshift","down",zipla)
         bindKey("n","down",dronubirak)
         addEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
         addEventHandler ( "onClientPreRender", root, menzil )

         addEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
         dronkontrol=true
         toggleControl("enter_exit",false)
          --timer ayarlama
           altyazisure=false
           altyazizamanlayicidegisken=false
           butonmaksbasmadeger=0
           birakmabutonubasmadeger=0
         guiSetVisible(main,false)
         showCursor(false)
         panelacmadeger=false
       end
 
      else
       triggerServerEvent("insansizdron",localPlayer)
       bindKey("x","down",sabitdronmodu)
       bindKey("lshift","down",zipla)
       bindKey("n","down",dronubirak)
       addEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
       addEventHandler ( "onClientPreRender", root, menzil )
       addEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
       dronkontrol=true
       toggleControl("enter_exit",false)
     --timer ayarlama değişkenleri
        altyazisure=false
        altyazizamanlayicidegisken=false
        butonmaksbasmadeger=0
        birakmabutonubasmadeger=0
       guiSetVisible(main,false)
       showCursor(false)
       panelacmadeger=false
      end
    elseif butonmaksbasmadeger<=butonabasmasiniri then
      outputChatBox("Araçta kullanamazsın!",255,0,0)
      butonmaksbasmadeger=butonmaksbasmadeger+1
    end
   elseif source == insansizhavaaracibuton and dronkontrol==true and butonmaksbasmadeger<=butonabasmasiniri then
    outputChatBox("Daha fazla İHA alamazsın önce aldığını kapat.",255,0,0)
    butonmaksbasmadeger=butonmaksbasmadeger+1
  end

  --robot dronuna basılınca
   if source ==robotbuton and dronkontrol==false then
    local arabadamioyuncu=isPedInVehicle(localPlayer)
    local oyuncuarabasi=getPedOccupiedVehicle(localPlayer)
    if oyuncuarabasi==false then 
    else
      local oyuncuarabasimodel=getElementModel(oyuncuarabasi)
    end
    if arabadamioyuncu==false or oyuncuarabasimodel==441 or oyuncuarabasimodel==464 or oyuncuarabasimodel==594 or oyuncuarabasimodel==501 then 
      px,py,pz=getElementPosition(getLocalPlayer())
      if lasventurasengel==true then
       if px>= yasaklialanxalt and px<=yasaklialanxust and py>=yasaklialanysol and py<=yasaklialanysag then
         outputChatBox(yasaklialanmesaj,255,0,0)
       else
         triggerServerEvent("robot",localPlayer)
         bindKey("x","down",sabitdronmodu)
         bindKey("lshift","down",zipla)
         bindKey("n","down",dronubirak)
         addEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
         addEventHandler ( "onClientPreRender", root, menzil )

         addEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
         dronkontrol=true
         toggleControl("enter_exit",false)
          --timer ayarlama
           altyazisure=false
           altyazizamanlayicidegisken=false
         guiSetVisible(main,false)
         butonmaksbasmadeger=0
         birakmabutonubasmadeger=0
         showCursor(false)
         panelacmadeger=false
       end
 
      else
       triggerServerEvent("robot",localPlayer)
       bindKey("x","down",sabitdronmodu)
       bindKey("lshift","down",zipla)
       bindKey("n","down",dronubirak)
       addEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
       addEventHandler ( "onClientPreRender", root, menzil )
       addEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
       dronkontrol=true
       toggleControl("enter_exit",false)
     --timer ayarlama değişkenleri
        altyazisure=false
        altyazizamanlayicidegisken=false
        birakmabutonubasmadeger=0
        butonmaksbasmadeger=0
       guiSetVisible(main,false)
       showCursor(false)
       panelacmadeger=false
      end
    elseif
    butonmaksbasmadeger<=butonabasmasiniri then
      outputChatBox("Araçta kullanamazsın!",255,0,0)
      butonmaksbasmadeger=butonmaksbasmadeger+1
    end
   elseif source == robotbuton and dronkontrol==true and butonmaksbasmadeger<=butonabasmasiniri then
    outputChatBox("Daha fazla robot alamazsın önce aldığını kapat.",255,0,0)
    butonmaksbasmadeger=butonmaksbasmadeger+1
  end

 --kapat butonuna basılınca
  if source == kapatbuton then
      panelacma()
 end
end
function panelacma() --PANEL AÇMA KAPAMA
  if dronkontrol == false then
    if panelacmadeger==false then
      panel()
      addEventHandler("onClientGUIClick",root,butonabasma)
      panelacmadeger=true
    else
        guiSetVisible(main,false)
        showCursor(false)
        removeEventHandler("onClientGUIClick",root,butonabasma)
        panelacmadeger=false
    end
  else
    dronkontrol=false
    triggerServerEvent("drondanin",localPlayer)
    triggerServerEvent("dronsilme",localPlayer)
    unbindKey("x","down",sabitdronmodu)
    unbindKey("lshift","down",zipla)
    unbindKey("n","down",dronubirak)
    removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
    removeEventHandler ( "onClientPreRender", root, menzil)
    removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
  end

end
function pedhasaryedi ( attacker,weapon,bodypart) --ped hasar yiyince canının gitmesi

   if bodypart==9 then
     setElementHealth(source,0)
     elseif weapon==50 then 
      cancelEvent()
     else
     can= getElementHealth(source)
     can=can-15
     setElementHealth(source,can)
   end

end 
function arabayabinme  ( theVehicle, seat ) --araçtan inince yapılacak ayarlar
  if ( getElementModel ( theVehicle ) == 464 ) then 
      toggleControl ( "vehicle_secondary_fire", false )
      if seat>=1 then 
        triggerServerEvent("drondanin",localPlayer)
      end
  else --
      toggleControl ( "vehicle_secondary_fire", true ) 
  end
  if ( getElementModel ( theVehicle ) == 594 ) then 
    if seat>=1 then 
      triggerServerEvent("drondanin",localPlayer)
    end
  end
  if ( getElementModel ( theVehicle ) == 501) then 
    if seat>=1 then 
      triggerServerEvent("drondanin",localPlayer)
    end
  end
end
function pedoldu()--ped ölünce 
  for k, v in ipairs(getElementsByType('ped')) do
    if getElementData(v, "sahipped") == getPlayerName(getLocalPlayer()) then
      dronkontrol=false
      triggerServerEvent("drondanin",localPlayer)
      triggerServerEvent("dronsilme",localPlayer)
              unbindKey("x","down",sabitdronmodu)
        unbindKey("lshift","down",zipla)
        unbindKey("n","down",dronubirak)
        removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
        removeEventHandler ( "onClientPreRender", root, menzil )
        removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
      setElementHealth(getLocalPlayer(),0)
     --timer ayarlama
      if (isTimer(altyazitimer)==nil) then --timer ayarlama
        
      elseif (isTimer(altyazitimer)==true) then
       killTimer(altyazitimer)
      else
    end
    end
 end
end
function dronatesengel(attacker,weapon,bodypart) --drondaki oyuncu hasar yerse canı gitmiyor
  if (isPedInVehicle(localPlayer)) then 
   local arac= getPedOccupiedVehicle ( getLocalPlayer() )
   local aracmodel=getElementModel(arac)
  end
  local saldirganmodel=getElementModel(attacker)
  if weapon==50 and saldirganmodel==501 then 
    cancelEvent()
  end
  if dronkontrol==true  then
   if aracmodel==441 or aracmodel==464 or aracmodel==594 or aracmodel==501 then
    cancelEvent()
    
   end
  end
end
function menzil()  --MENZİLDEN ÇIKARSA DENİZE DÜŞERSE V.B OLAYLARI İÇİN
    --VV--Dron alt yazısı
    if dronkontrol==true and altyazisure==false then 
       if (isPedInVehicle(getLocalPlayer())) then 
         local oyuncuaraba=getPedOccupiedVehicle(getLocalPlayer())
         local aracmodel=getElementModel(oyuncuaraba)
          function altyazizaman()
           altyazisure=true
          end
           if aracmodel == 441 then
            dxDrawText("Uzaktan kumandalı aracı kullanmayı bırakmak  için 'N' basınız ya da '/dron' yazınız.", screenW * 0.2481, screenH * 0.944, screenW * 0.7231, screenH * 0.0689, tocolor(255, 255,255, 255), 0.60, "bankgothic", "left", "top", false, false, false, true, false)
           end
           if aracmodel == 464 then
             dxDrawText("İHA'yı kullanmayı bırakmak için 'N' basınız ya da '/dron' yazınız.", screenW * 0.3181, screenH * 0.944, screenW * 0.7231, screenH * 0.0689, tocolor(255, 255,255, 255), 0.60, "bankgothic", "left", "top", false, false, false, true, false)
           end
           if aracmodel == 594 then
             dxDrawText("Robotu kullanmayı bırakmak için 'N' basınız ya da '/dron' yazınız.", screenW * 0.2681, screenH * 0.944, screenW * 0.7231, screenH * 0.0689, tocolor(255, 255,255, 255), 0.60, "bankgothic", "left", "top", false, false, false, true, false)
           end
           if aracmodel == 501 then
             dxDrawText( "Dronu kullanmayı bırakmak için 'N' basınız ya da '/dron' yazınız.", screenW * 0.2941, screenH * 0.944, screenW * 0.7231, screenH * 0.0689, tocolor(255, 255,255, 255), 0.60, "bankgothic", "left", "top", false, false, false, true, false)
             dxDrawText( "Dron sabitleme modunu kullanmak için 'X' basınız.", screenW * 0.3281, screenH * 0.965, screenW * 0.7231, screenH * 0.0689, tocolor(255, 255,255, 255), 0.60, "bankgothic", "left", "top", false, false, false, true, false)
           end
           if altyazizamanlayicidegisken==false then
           altyazitimer=setTimer(altyazizaman,15000,1) 
           altyazizamanlayicidegisken=true
           end
       end
     end
  local arabadamikontrol=isPedInVehicle(getLocalPlayer())
  if dronkontrol==true  and arabadamikontrol==true then
    local ox,oy,oz=getElementPosition(getLocalPlayer())
    local oyuncuaraba=getPedOccupiedVehicle(getLocalPlayer())
    local aracmodel=getElementModel(oyuncuaraba)
    local arabacan=getElementHealth(oyuncuaraba)
    local isik=getVehicleOverrideLights(oyuncuaraba)
    xustmenzil=px+dronalansinir
    xaltmenzil=px-dronalansinir
    ysolmenzil=py-dronalansinir
    ysagmenzil=py+dronalansinir
    if aracmodel==594 and isik==2 or isik== 0 then
      setVehicleOverrideLights(oyuncuaraba,1)
    end
    if aracmodel==441 or aracmodel==464 or aracmodel==594 or aracmodel==501 then -- canı azken silme
      if arabacan<=400 then 
        triggerServerEvent("drondanin",localPlayer)
        triggerServerEvent("dronsilme",localPlayer)
        unbindKey("x","down",sabitdronmodu)
        unbindKey("lshift","down",zipla)
        unbindKey("n","down",dronubirak)
        removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
        removeEventHandler ( "onClientPreRender", root, menzil )
        removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
        dronkontrol=false
        --timer ayarlama
          if (isTimer(altyazitimer)==nil) then --timer ayarlama        
          elseif (isTimer(altyazitimer)==true) then
         killTimer(altyazitimer)
         else
        end
        local ozelaraba=getPedOccupiedVehicle(localPlayer)
        local ozelarabamodel=getElementModel(ozelaraba)
        if ozelarabamodel == 441 then
         outputChatBox("Uzaktan kumandalı aracının sinyali gitti!",255,0,0) 
        end
        if ozelarabamodel ==464 then
         outputChatBox("İnsansız hava aracının sinyali gitti!",255,0,0) 
        end
        if ozelarabamodel == 594 then
         outputChatBox("Robotunun sinyali gitti!",255,0,0) 
        end
        if ozelarabamodel == 501 then
         outputChatBox("Dronunun sinyali gitti!",255,0,0) 
        end
      end
    end
    if  aracmodel==441 or aracmodel==464 or aracmodel==594 or aracmodel==501 then --hayalet modu ekleme
      if aracmodel== 501 then
        setHeliBladeCollisionsEnabled (oyuncuaraba, false)
      end
      for i,v in pairs (getElementsByType("vehicle")) do 
        if (isElementCollidableWith(v,oyuncuaraba) == true) then
          for i,v in pairs (getElementsByType("vehicle")) do 
           setElementCollidableWith(v, oyuncuaraba,false) 
           
          end
       end
     end 
     for i,v in pairs (getElementsByType("ped")) do 
        if (isElementCollidableWith(v,oyuncuaraba) == true) then
          for i,v in pairs (getElementsByType("ped")) do 
           setElementCollidableWith(v, oyuncuaraba,false) 
          end
       end
     end
       for i,v in pairs (getElementsByType("player")) do 
        if (isElementCollidableWith(v,oyuncuaraba) == true) then
          for i,v in pairs (getElementsByType("player")) do 
           setElementCollidableWith(v, oyuncuaraba,false) 
          end
       end
     end
     
    end
    if ox>=xaltmenzil and ox<=xustmenzil and oy>=ysolmenzil and oy<=ysagmenzil then --alan menzilinden çıkma
     else
      triggerServerEvent("drondanin",localPlayer)
      triggerServerEvent("dronsilme",localPlayer)
      unbindKey("x","down",sabitdronmodu)
      unbindKey("lshift","down",zipla)
      unbindKey("n","down",dronubirak)
      removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
      removeEventHandler ( "onClientPreRender", root, menzil)
      removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
      dronkontrol=false
      --timer ayarlama
        if (isTimer(altyazitimer)==nil) then --timer ayarlama        
        elseif (isTimer(altyazitimer)==true) then
       killTimer(altyazitimer)
       else
      end
      local ozelaraba=getPedOccupiedVehicle(localPlayer)
      local ozelarabamodel=getElementModel(ozelaraba)
      if ozelarabamodel == 441 then
       outputChatBox("Uzaktan kumandalı aracının sinyali gitti!",255,0,0) 
      end
      if ozelarabamodel ==464 then
       outputChatBox("İnsansız hava aracının sinyali gitti!",255,0,0) 
      end
      if ozelarabamodel == 594 then
       outputChatBox("Robotunun sinyali gitti!",255,0,0) 
      end
      if ozelarabamodel == 501 then
       outputChatBox("Dronunun sinyali gitti!",255,0,0) 
      end
    end
    if lasventurasengel==true and ox>= yasaklialanxalt and ox<=yasaklialanxust and oy>=yasaklialanysol and oy<=yasaklialanysag then 
      triggerServerEvent("drondanin",localPlayer)
      triggerServerEvent("dronsilme",localPlayer)
      unbindKey("x","down",sabitdronmodu)
      unbindKey("lshift","down",zipla)
      unbindKey("n","down",dronubirak)
      removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
      removeEventHandler ( "onClientPreRender", root, menzil)
      removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
      dronkontrol=false
     --timer ayarlama
      if (isTimer(altyazitimer)==nil) then --timer ayarlama   
      elseif (isTimer(altyazitimer)==true) then
      killTimer(altyazitimer)
      else
     end
      outputChatBox(yasaklialanmesaj,255,0,0)
    end
    if arabadamikontrol==true then
      if aracmodel==441 or aracmodel==464 or aracmodel==594 or aracmodel==501 then 
      else
       dronkontrol=false
      --timer ayarlama
       if (isTimer(altyazitimer)==nil) then --timer ayarlama 
       elseif (isTimer(altyazitimer)==true) then
       killTimer(altyazitimer)
       else
      end
       outputChatBox("Dronun silindi lütfen tekrar al.",255,0,0)
       triggerServerEvent("dronsilme",localPlayer)
       unbindKey("x","down",sabitdronmodu)
       unbindKey("lshift","down",zipla)
       unbindKey("n","down",dronubirak)
       removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
       removeEventHandler ( "onClientPreRender", root, menzil )
       removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
      end
   end
   if isElementInWater (oyuncuaraba) then --suya düşerse
     triggerServerEvent("drondanin",localPlayer)
     triggerServerEvent("dronsilme",localPlayer)
     unbindKey("x","down",sabitdronmodu)
     unbindKey("lshift","down",zipla)
     unbindKey("n","down",dronubirak)
     removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
     removeEventHandler ( "onClientPreRender", root, menzil )
     removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
     dronkontrol=false
     --timer ayarlama
      if (isTimer(altyazitimer)==nil) then --timer ayarlama   
      elseif (isTimer(altyazitimer)==true) then
     killTimer(altyazitimer)
     else
     end
     local ozelaraba=getPedOccupiedVehicle(localPlayer)
     local ozelarabamodel=getElementModel(ozelaraba)
     if ozelarabamodel == 441 then
      outputChatBox("Uzaktan kumandalı aracının sinyali gitti!",255,0,0) 
     end
     if ozelarabamodel ==464 then
      outputChatBox("İnsansız hava aracının sinyali gitti!",255,0,0) 
     end
     if ozelarabamodel == 594 then
      outputChatBox("Robotunun sinyali gitti!",255,0,0) 
     end
     if ozelarabamodel == 501 then
      outputChatBox("Dronunun sinyali gitti!",255,0,0) 
     end
   end
  end
  if arabadamikontrol==false and dronkontrol==true then --dron silinirse
    if destroylananaracid==441 or destroylananaracid==464 or destroylananaracid==594 or destroylananaracid==501 then 
      dronkontrol=false
     --timer ayarlama
      if (isTimer(altyazitimer)==nil) then --timer ayarlama
      elseif (isTimer(altyazitimer)==true) then
      killTimer(altyazitimer)
      else
    end
      destroylananaracid=nil
      local ozelaraba=getPedOccupiedVehicle(localPlayer)
      local ozelarabamodel=getElementModel(ozelaraba)
      if ozelarabamodel == 441 then
       outputChatBox("Uzaktan kumandalı aracın silindi.",255,0,0) 
      end
      if ozelarabamodel ==464 then
       outputChatBox("İnsansız hava aracın silindi.",255,0,0) 
      end
      if ozelarabamodel == 594 then
       outputChatBox("Robotun silindi.",255,0,0) 
      end
      if ozelarabamodel == 501 then
       outputChatBox("Dronun silindi.",255,0,0) 
      end
      triggerServerEvent("dronsilme",localPlayer) 
      unbindKey("x","down",sabitdronmodu)
      unbindKey("lshift","down",zipla)
      unbindKey("n","down",dronubirak)
      removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
      removeEventHandler ( "onClientPreRender", root, menzil )
      removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
    end
  end
end
addEventHandler("onClientElementDestroy", resourceRoot, function () --aracı silinirse herhangi bir panelden oyuncuyu düzeltiyor
	if getElementType(source) == "vehicle" and getPedOccupiedVehicle(getLocalPlayer()) == source then
      destroylananaracid=getElementModel(source)
	end
end)
function zipla() --ziplamak için
  if oyuncuarabaziplamaizni==true and dronkontrol==true then 
    local oyuncuaraba=getPedOccupiedVehicle(getLocalPlayer())
    local oyuncuarabamodel=getElementModel(oyuncuaraba)
    if oyuncuarabamodel==441 and ziplamazaman==false  then
      function zaman()
      ziplamazaman=false
      end
      local ox,oy,oz=getElementPosition(getLocalPlayer())
      local rox,roy,roz=getElementRotation(getLocalPlayer())
      setElementPosition(oyuncuaraba,ox,oy,oz+ziplamadeger)
      setElementRotation(oyuncuaraba,rox-25,roy,roz)
      ziplamazaman=true
      setTimer(zaman,5000,1) 
    end 
  end 
end
function dronubirak()
  if dronkontrol==true then 
    dronkontrol=false
    --timer ayarlama
     if (isTimer(altyazitimer)==nil) then --timer ayarlama    
     elseif (isTimer(altyazitimer)==true) then
     killTimer(altyazitimer)
     else
    end
    triggerServerEvent("drondanin",localPlayer)
    triggerServerEvent("dronsilme",localPlayer)
    unbindKey("x","down",sabitdronmodu)
    unbindKey("lshift","down",zipla)
    unbindKey("n","down",dronubirak)
    removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
    removeEventHandler ( "onClientPreRender", root, menzil)
    removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
  end
end
function sabitdronmodu ()
 if dronkontrol==true then 
  local dron = getPedOccupiedVehicle(localPlayer)
  local dronmodel=getElementModel(dron)
	local dronmoduonoff = isElementFrozen(dron)
	if isPedInVehicle(localPlayer) then
    if dronmodel==501 then
      if getPedOccupiedVehicleSeat(localPlayer) == 0 then
        if dronmoduonoff == false then
          setElementFrozen(dron,true)
        elseif dronmoduonoff == true then
          setElementFrozen(dron,false)
        end
      end 
    end
	end
 end
end
function silahengel()
  if dronkontrol==true then 
    setPedWeaponSlot(localPlayer,0)
  end
end
function arabadaninme()
  if dronkontrol==true then 
    dronkontrol=false
    --timer ayarlama
     if (isTimer(altyazitimer)==nil) then --timer ayarlama    
     elseif (isTimer(altyazitimer)==true) then
     killTimer(altyazitimer)
     else
    end
    triggerServerEvent("drondanin",localPlayer)
    triggerServerEvent("dronsilme",localPlayer)
    unbindKey("x","down",sabitdronmodu)
    unbindKey("lshift","down",zipla)
    unbindKey("n","down",dronubirak)
    removeEventHandler("onClientPlayerWeaponSwitch", localPlayer, silahengel) -- silah alırsa dronda engellenecek
    removeEventHandler ( "onClientPreRender", root, menzil)
    removeEventHandler ( "onClientPlayerDamage", localPlayer, dronatesengel)   
  end
end
addEventHandler("onClientPedWasted", root, pedoldu)
addEventHandler ( "onClientPlayerVehicleEnter", localPlayer, arabayabinme )-- baronun ateş etmesini engelledik
addEventHandler ( "onClientPlayerVehicleExit", localPlayer, arabadaninme )-- baronun ateş etmesini engelledik
addEventHandler ( "onClientPedDamage", resourceRoot, pedhasaryedi ) 
addCommandHandler("dron",panelacma)
