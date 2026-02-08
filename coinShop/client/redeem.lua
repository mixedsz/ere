local function redeem(data)
    if not data or not data.code then return end 

    local success = lib.callback.await('bs:cs:checkCode', false, data.code)
end

RegisterNUICallback('csRedeem', redeem)
