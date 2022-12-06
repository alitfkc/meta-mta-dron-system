--By Reventon

function AracYukle594()
    local txd = engineLoadTXD ('Dosyalar/1.txd')
    engineImportTXD(txd,594)
    local dff = engineLoadDFF('Dosyalar/2.dff',594)
    engineReplaceModel(dff,594)
end
addEventHandler('onClientResourceStart',getResourceRootElement(getThisResource()),AracYukle594)

--By Reventon