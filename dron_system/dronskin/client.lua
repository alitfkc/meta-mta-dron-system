--By Reventon

function AracYukle501()
    local txd = engineLoadTXD ('Dosyalar/1.txd')
    engineImportTXD(txd,501)
    local dff = engineLoadDFF('Dosyalar/2.dff',501)
    engineReplaceModel(dff,501)
end
addEventHandler('onClientResourceStart',getResourceRootElement(getThisResource()),AracYukle501)

--By Reventon