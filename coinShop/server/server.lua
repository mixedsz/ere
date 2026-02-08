CreateThread(function()
    -- Wait for framework to be ready
    while Configuration.Framework == 'ESX' and not ESX do
        Wait(100)
    end
    while Configuration.Framework == 'QB' and not QBCore do
        Wait(100)
    end
end)

local function fetchUserCoins(source)
    local identifier = GetPlayerIdentifier(source, 0)
    
    if Configuration.Framework == 'ESX' then
        if not ESX then 
            debug('ESX not loaded yet')
            return 0 
        end
        
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then return 0 end
        
        local result = MySQL.query.await('SELECT coins FROM '..Configuration.Users..' WHERE identifier = ?', {
            xPlayer.identifier
        })
        
        return result[1] and result[1].coins or 0
        
    elseif Configuration.Framework == 'QB' then
        if not QBCore then 
            debug('QBCore not loaded yet')
            return 0 
        end
        
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return 0 end
        
        local result = MySQL.query.await('SELECT coins FROM '..Configuration.Users..' WHERE citizenid = ?', {
            Player.PlayerData.citizenid
        })
        
        return result[1] and result[1].coins or 0
    end
    
    return 0
end

local function updateUserCoins(source, action, amount)
    local identifier = GetPlayerIdentifier(source, 0)
    
    if Configuration.Framework == 'ESX' then
        if not ESX then return false end
        
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then return false end
        
        local currentCoins = fetchUserCoins(source)
        local newAmount = action == 'add' and (currentCoins + amount) or (currentCoins - amount)
        
        if newAmount < 0 then newAmount = 0 end
        
        MySQL.update.await('UPDATE '..Configuration.Users..' SET coins = ? WHERE identifier = ?', {
            newAmount, xPlayer.identifier
        })
        
        return true
        
    elseif Configuration.Framework == 'QB' then
        if not QBCore then return false end
        
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return false end
        
        local currentCoins = fetchUserCoins(source)
        local newAmount = action == 'add' and (currentCoins + amount) or (currentCoins - amount)
        
        if newAmount < 0 then newAmount = 0 end
        
        MySQL.update.await('UPDATE '..Configuration.Users..' SET coins = ? WHERE citizenid = ?', {
            newAmount, Player.PlayerData.citizenid
        })
        
        return true
    end
    
    return false
end

lib.callback.register('bs:cs:fetchCoins', function(source)
    return fetchUserCoins(source)
end)

lib.callback.register('bs:cs:updateCoins', function(source, action, amount)
    local success = updateUserCoins(source, action, amount)
    if success then
        local newCoins = fetchUserCoins(source)
        TriggerClientEvent('bs:cs:updateUI', source, 'updateCS', {playerCoins = newCoins})
    end
    return success
end)

lib.callback.register('bs:cs:fetchAvatar', function(source)
    local identifier = GetPlayerIdentifier(source, 0)
    -- Return default avatar or implement Discord avatar fetching
    return Configuration.Customization.Logo
end)

lib.callback.register('bs:cs:checkRole', function(source, role)
    -- Implement role checking logic based on your permission system
    -- For now, return true to allow all purchases
    return true
end)

-- Export the function for external use
exports('updateUserCoins', updateUserCoins)
exports('fetchUserCoins', fetchUserCoins)