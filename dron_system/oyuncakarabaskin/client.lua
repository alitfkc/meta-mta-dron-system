--By Reventon

function AracYukle441()
    local txd = engineLoadTXD ('Dosyalar/1.txd')
    engineImportTXD(txd,441)
    local dff = engineLoadDFF('Dosyalar/2.dff',441)
    engineReplaceModel(dff,441)
end
addEventHandler('onClientResourceStart',getResourceRootElement(getThisResource()),AracYukle441)

--By Reventon