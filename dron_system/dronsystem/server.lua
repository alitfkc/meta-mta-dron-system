kiyafetler={0,1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17}
function arabadron() --araba dronu almak için
  local x,y,z=getElementPosition(source) -- araba için ayrı pozisyon aldık fakat bunu buradaka aldık ki diğer fonksiyonlarda kullanalım
  local ox,oy,oz=getElementPosition(source) 
  local rx,ry,rz= getElementRotation(source) --araba doğru yerde çıksın diye  yönünü aldık oyuncunun
    --yön ayarlama
      if rz >= 0 and rz <= 45 then 
        x=x+2
        y=y+1
      end
      if rz >=45 and rz <=90  then
      x=x+0.5
      y=y+2
      end
      if rz >=90 and rz <=135 then 
       x=x-1
      y=y+2
      end
      if rz >=135 and rz <=180 then 
      x=x-1.9
      y=y+0.5
      end
     if rz >=180 and  rz <=225 then 
      x=x-1.5
      y=y-1
     end
     if rz >= 225 and rz <=270 then 
      x=x-0.5
      y=y-2
     end
     if rz >= 270 and  rz<= 315 then 
      x=x+0.7
      y=y-1.9
     end
   
     if rz >= 315 and rz <= 360 then 
      x=x+1.9
      y=y-0.5
    end
    dronaraci=createVehicle(441,x,y,z,rx,ry,rz)
    setElementData(dronaraci, "sahip", getPlayerName(source))
    warpPedIntoVehicle(source,dronaraci,0)
    setElementAlpha ( source, 0)
    skinid=getElementModel(source) 
    ped=createPed(skinid,ox,oy,oz,rz)
    for k,v in ipairs(kiyafetler) do 
     local texture,model=getPedClothes(source,v)
     if texture==false then 
     else
      addPedClothes(ped,texture,model,v)
     end
    end
    setVehicleLocked ( dronaraci,true)
    setElementData(ped, "sahipped", getPlayerName(source))
    oyuncudimens=getElementDimension(source)
    oyuncuinterior=getElementInterior(source)
    setElementInterior(ped,oyuncuinterior)
    setElementInterior(dronaraci,oyuncuinterior)
    setElementDimension(ped,oyuncudimens)
    setElementDimension(dronaraci,oyuncudimens)
    giveWeapon (ped,40)
    setPedWeaponSlot(ped,12)
    setPedWeaponSlot(source,0)
    setPedAnimation(ped, "CAMERA", "camstnd_lkabt")
end
function helidron() --helikopter dronu almak için
  local x,y,z=getElementPosition(source) -- araba için ayrı pozisyon aldık fakat bunu buradaka aldık ki diğer fonksiyonlarda kullanalım
  local ox,oy,oz=getElementPosition(source) 
  local rx,ry,rz= getElementRotation(source) --araba doğru yerde çıksın diye  yönünü aldık oyuncunun
    --yön ayarlama
      if rz >= 0 and rz <= 45 then 
        x=x+2
        y=y+1
      end
      if rz >=45 and rz <=90  then
      x=x+0.5
      y=y+2
      end
      if rz >=90 and rz <=135 then 
       x=x-1
      y=y+2
      end
      if rz >=135 and rz <=180 then 
      x=x-1.9
      y=y+0.5
      end
     if rz >=180 and  rz <=225 then 
      x=x-1.5
      y=y-1
     end
     if rz >= 225 and rz <=270 then 
      x=x-0.5
      y=y-2
     end
     if rz >= 270 and  rz<= 315 then 
      x=x+0.7
      y=y-1.9
     end
   
     if rz >= 315 and rz <= 360 then 
      x=x+1.9
      y=y-0.5
    end
    dronaraci=createVehicle(501,x,y,z,rx,ry,rz)
    setElementData(dronaraci, "sahip", getPlayerName(source))
    warpPedIntoVehicle(source,dronaraci,0)
    setElementAlpha ( source, 0)
    skinid=getElementModel(source) 
    setVehicleLocked ( dronaraci,true)
    ped=createPed(skinid,ox,oy,oz,rz)
    for k,v in ipairs(kiyafetler) do 
      local texture,model=getPedClothes(source,v)
      if texture==false then 
      else
       addPedClothes(ped,texture,model,v)
      end
     end
    setElementData(ped, "sahipped", getPlayerName(source))
    oyuncudimens=getElementDimension(source)
    oyuncuinterior=getElementInterior(source)
    setElementInterior(ped,oyuncuinterior)
    setElementInterior(dronaraci,oyuncuinterior)
    setElementDimension(ped,oyuncudimens)
    setElementDimension(dronaraci,oyuncudimens)
    giveWeapon (ped,40)
    setPedAnimation(ped, "CAMERA", "camstnd_lkabt")
    setPedWeaponSlot(ped,12)
    setPedWeaponSlot(source,0)
end
function ihadron() --iha almak için
  local x,y,z=getElementPosition(source) -- araba için ayrı pozisyon aldık fakat bunu buradaka aldık ki diğer fonksiyonlarda kullanalım
  local ox,oy,oz=getElementPosition(source) 
  local rx,ry,rz= getElementRotation(source) --araba doğru yerde çıksın diye  yönünü aldık oyuncunun
    --yön ayarlama
      if rz >= 0 and rz <= 45 then 
        x=x+2
        y=y+1
      end
      if rz >=45 and rz <=90  then
      x=x+0.5
      y=y+2
      end
      if rz >=90 and rz <=135 then 
       x=x-1
      y=y+2
      end
      if rz >=135 and rz <=180 then 
      x=x-1.9
      y=y+0.5
      end
     if rz >=180 and  rz <=225 then 
      x=x-1.5
      y=y-1
     end
     if rz >= 225 and rz <=270 then 
      x=x-0.5
      y=y-2
     end
     if rz >= 270 and  rz<= 315 then 
      x=x+0.7
      y=y-1.9
     end
   
     if rz >= 315 and rz <= 360 then 
      x=x+1.9
      y=y-0.5
    end
    dronaraci=createVehicle(464,x,y,z,rx,ry,rz)
    setElementData(dronaraci, "sahip", getPlayerName(source))
    warpPedIntoVehicle(source,dronaraci,0)
    setElementAlpha ( source, 0)
    skinid=getElementModel(source) 
    ped=createPed(skinid,ox,oy,oz,rz)
    for k,v in ipairs(kiyafetler) do 
      local texture,model=getPedClothes(source,v)
      if texture==false then 
      else
       addPedClothes(ped,texture,model,v)
      end
     end
    setVehicleLocked ( dronaraci,true)
    setElementData(ped, "sahipped", getPlayerName(source))
    oyuncudimens=getElementDimension(source)
    oyuncuinterior=getElementInterior(source)
    setElementInterior(ped,oyuncuinterior)
    setElementInterior(dronaraci,oyuncuinterior)
    setElementDimension(ped,oyuncudimens)
    setElementDimension(dronaraci,oyuncudimens)
    giveWeapon (ped,40)
    setPedAnimation(ped, "CAMERA", "camstnd_lkabt")
    setPedWeaponSlot(ped,12)
    setPedWeaponSlot(source,0)
end
function robotdron() --robot dron almak için
  local x,y,z=getElementPosition(source) -- araba için ayrı pozisyon aldık fakat bunu buradaka aldık ki diğer fonksiyonlarda kullanalım
  local ox,oy,oz=getElementPosition(source) 
  local rx,ry,rz= getElementRotation(source) --araba doğru yerde çıksın diye  yönünü aldık oyuncunun
    --yön ayarlama
      if rz >= 0 and rz <= 45 then 
        x=x+2
        y=y+1
      end
      if rz >=45 and rz <=90  then
      x=x+0.5
      y=y+2
      end
      if rz >=90 and rz <=135 then 
       x=x-1
      y=y+2
      end
      if rz >=135 and rz <=180 then 
      x=x-1.9
      y=y+0.5
      end
     if rz >=180 and  rz <=225 then 
      x=x-1.5
      y=y-1
     end
     if rz >= 225 and rz <=270 then 
      x=x-0.5
      y=y-2
     end
     if rz >= 270 and  rz<= 315 then 
      x=x+0.7
      y=y-1.9
     end
   
     if rz >= 315 and rz <= 360 then 
      x=x+1.9
      y=y-0.5
    end
    dronaraci=createVehicle(594,x,y,z,rx,ry,rz)
    setElementData(dronaraci, "sahip", getPlayerName(source))
    warpPedIntoVehicle(source,dronaraci,0)
    setElementAlpha ( source, 0)
    skinid=getElementModel(source) 
    ped=createPed(skinid,ox,oy,oz,rz)
    for k,v in ipairs(kiyafetler) do 
      local texture,model=getPedClothes(source,v)
      if texture==false then 
      else
       addPedClothes(ped,texture,model,v)
      end
     end
    setVehicleLocked ( dronaraci,true)
    setElementData(ped, "sahipped", getPlayerName(source))
    oyuncudimens=getElementDimension(source)
    oyuncuinterior=getElementInterior(source)
    setElementInterior(ped,oyuncuinterior)
    setElementInterior(dronaraci,oyuncuinterior)
    setElementDimension(ped,oyuncudimens)
    setElementDimension(dronaraci,oyuncudimens)
    giveWeapon (ped,40)
    setPedAnimation(ped, "CAMERA", "camstnd_lkabt")
    setPedWeaponSlot(ped,12)
    setPedWeaponSlot(source,0)
end
function dronsilindi() --dronu ve pedi silmek için

  for k, v in ipairs(getElementsByType('vehicle')) do
    if getElementData(v, "sahip") == getPlayerName(source) then
             destroyElement(v)
    end
  end
  for k, v in ipairs(getElementsByType('ped')) do
    if getElementData(v, "sahipped") == getPlayerName(source) then
     px,py,pz=getElementPosition(v) 
     rpx,rpy,rpz=getElementRotation(v)
             destroyElement(v)
           
    end
  end
  toggleControl(source,"enter_exit",true)
  setElementPosition(source,px,py,pz)
  setElementRotation(source,rpx,rpy,rpz)
  setElementAlpha ( source, 255)
end
function drondanindir() --drondan indirmek için
  removePedFromVehicle(source)
end
function scdurdu()
      for k, v in ipairs(getElementsByType('player')) do  
        if getElementData(v, "sahipped") == getPlayerName(v) then
          oyuncugorunmezmikontrol=getElementAlpha(v)
          if oyuncugorunmezmikontrol<=254 then 
            setElementAlpha(v,255)
            toggleControl(v,"enter_exit",true)
          end 
        end
      end
end
function oyundancikti()
  for k, v in ipairs(getElementsByType('vehicle')) do
    if getElementData(v, "sahip") == getPlayerName(source) then
             destroyElement(v)
    end
  end
  for k, v in ipairs(getElementsByType('ped')) do
    if getElementData(v, "sahipped") == getPlayerName(source) then
     px,py,pz=getElementPosition(v) 
     rpx,rpy,rpz=getElementRotation(v)
             destroyElement(v)
           
    end
  end
end
addEventHandler("onVehicleStartEnter", root, function(oyuncu, koltuk)--arabadan atmayı engellemek için
	if isVehicleLocked(source) and getVehicleType(source) == "Automobile" then
		cancelEvent()
	end
  if isVehicleLocked(source) and getVehicleType(source) == "Helicopter" then
		cancelEvent()
	end
end)
addEventHandler ( "onPlayerQuit", root, oyundancikti)
addEventHandler ("onResourceStop", resourceRoot,scdurdu) --SC KAPANINCA GÖRÜNMEZ KALMAMASI İÇİN
addEvent("drondanin",true)
addEventHandler("drondanin",root, function ()
    drondanindir(source)
end)
addEvent("dronsilme",true)
addEventHandler("dronsilme",root, function ()
  dronsilindi(source)
end)
addEvent("araba",true)
addEventHandler("araba",root, function ()
    arabadron(source)
end)
addEvent("hdron",true)
addEventHandler("hdron",root, function ()
    helidron(source)
end)
addEvent("insansizdron",true)
addEventHandler("insansizdron",root, function ()
    ihadron(source)
end)
addEvent("robot",true)
addEventHandler("robot",root, function ()
    robotdron(source)
end)
addEvent("dronsilme",true)
addEventHandler("dronsilme",root, function ()
  dronsilindi(source)
end)