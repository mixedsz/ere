local isOpen, isSet = false, false

local function init()
    repeat
        Wait(1500)
    until NetworkIsSessionActive()
    Wait(2000)

    local filteredItems = {}
    
    for i = 1, #Data['Items'] do 
        filteredItems[i] = {
            label = Data['Items'][i].label, 
            category = Data['Items'][i].category, 
            coins = Data['Items'][i].coins, 
            sale = Data['Items'][i].sale, 
            image= Data['Items'][i].image,
            index = i
        }
    end

    nui('setCS', {
        discord = Configuration.Customization.Discord,
        store = Configuration.Customization.Store,
        color = Configuration.Customization.Theme,
        category = Data['Categories'],
        items = filteredItems,

        playerName = GetPlayerName(cache.playerId) or 'Invalid',
        playerPFP = lib.callback.await('bs:cs:fetchAvatar', false) or Configuration.Customization.Logo,
        playerCoins = lib.callback.await('bs:cs:fetchCoins') or 0,

        allowAudio = Configuration.Customization.SoundEffects.Enabled,
        audioVolume = Configuration.Customization.SoundEffects.Volume
    })

    debug('coin shop has been successfully set')
    isSet = true
end

---@param toggle boolean
local function toggleShop(toggle)
    if not isSet then return debug('coin shop is not set, please try again later') end 

    nui('toggleCS', {
        bool = toggle
    }, toggle)

    if toggle then 
        Configuration.enterShop()
    else
        Configuration.exitShop()
    end
end

local function purchaseItem(data, cb)
    local id = data.i
    local data = Data['Items'][id]

    if data.role then
        local hasRole = lib.callback.await('bs:cs:checkRole', 5000, data.role)
        if hasRole == nil then return Configuration.notify(Language['cooldown']) end 

        if not hasRole then cb({status = "fail"}) return Configuration.notify(Language['no_role']) end 
    end

    local coins = lib.callback.await('bs:cs:fetchCoins', 2000)
    if coins == nil then return Configuration.notify(Language['cooldown']) end 
    if not coins then return end 

    local itemCoins = data.coins
    local sale = tonumber(data.sale) or 0
    local totalCoins = itemCoins - (itemCoins * (sale / 100))

    if coins < totalCoins then
        Configuration.notify(Language['not_enough_coins'])

        cb({status = "fail"})
        return 
    end

    lib.callback.await('bs:cs:updateCoins', false, 'remove', totalCoins)
    if data.autoClose then toggleShop(false) end 

    cb({status = "ok"})
    data.onPurchase(data)
end

if Configuration.Command.Enabled then 
    RegisterCommand(Configuration.Command.Command, function()
        toggleShop(true)
    end)
end

RegisterCommand('coinshop', function()
    toggleShop(true)
end)

CreateThread(init)
exports('toggleShop', toggleShop)
RegisterNUICallback('closeCS', toggleShop)
RegisterNUICallback('csPurchase', purchaseItem)
