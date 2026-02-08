CreateThread(function()
    -- Wait for framework to be ready
    while Configuration.Framework == 'ESX' and not ESX do
        Wait(100)
    end
    while Configuration.Framework == 'QB' and not QBCore do
        Wait(100)
    end
end)

function givePlayerItem(source, data)
    if Configuration.Framework == 'ESX' then
        if not ESX then return false end
        
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then return false end
        
        xPlayer.addInventoryItem(data.item, data.count)
        return true
        
    elseif Configuration.Framework == 'QB' then
        if not QBCore then return false end
        
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return false end
        
        Player.Functions.AddItem(data.item, data.count)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data.item], "add", data.count)
        return true
    end
    
    return false
end

function givePlayerMoney(source, data)
    if Configuration.Framework == 'ESX' then
        if not ESX then return false end
        
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then return false end
        
        xPlayer.addMoney(data.amount)
        return true
        
    elseif Configuration.Framework == 'QB' then
        if not QBCore then return false end
        
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return false end
        
        Player.Functions.AddMoney('cash', data.amount)
        return true
    end
    
    return false
end

function givePlayerWeapon(source, data)
    if Configuration.Framework == 'ESX' then
        if not ESX then return false end
        
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then return false end
        
        xPlayer.addWeapon(data.weapon, data.ammo or 250)
        return true
        
    elseif Configuration.Framework == 'QB' then
        if not QBCore then return false end
        
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return false end
        
        Player.Functions.AddItem(data.weapon, 1, false, {ammo = data.ammo or 250})
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data.weapon], "add")
        return true
    end
    
    return false
end

lib.callback.register('bs:cs:giveItem', function(source, data)
    return givePlayerItem(source, data)
end)

lib.callback.register('bs:cs:giveMoney', function(source, data)
    return givePlayerMoney(source, data)
end)

lib.callback.register('bs:cs:giveWeapon', function(source, data)
    return givePlayerWeapon(source, data)
end)

lib.callback.register('bs:cs:giveVehicle', function(source, data)
    -- Implement vehicle database insertion based on your vehicle system
    if Configuration.Framework == 'ESX' then
        if not ESX then return false end
        
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then return false end
        
        MySQL.insert.await('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (?, ?, ?)', {
            xPlayer.identifier,
            data.plate,
            json.encode(data.props)
        })
        
        return true
    elseif Configuration.Framework == 'QB' then
        if not QBCore then return false end
        
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return false end
        
        MySQL.insert.await('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, state) VALUES (?, ?, ?, ?, ?, ?, ?)', {
            Player.PlayerData.license,
            Player.PlayerData.citizenid,
            data.model,
            GetHashKey(data.model),
            json.encode(data.props),
            data.plate,
            0
        })
        
        return true
    end
    
    return false
end)