--By Reventon

function AracYukle464()
    local txd = engineLoadTXD ('Dosyalar/1.txd')
    engineImportTXD(txd,464)
    local dff = engineLoadDFF('Dosyalar/2.dff',464)
    engineReplaceModel(dff,464)
end
addEventHandler('onClientResourceStart',getResourceRootElement(getThisResource()),AracYukle464)

--By Reventon