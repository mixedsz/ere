-- Add coins command (EXISTING - just showing for reference)
RegisterCommand('addcoins', function(source, args)
    if source == 0 then -- Console command
        local targetId = tonumber(args[1])
        local amount = tonumber(args[2])
        
        if not targetId or not amount then
            print('Usage: addcoins [id] [amount]')
            return
        end
        
        local success = updateUserCoins(targetId, 'add', amount)
        if success then
            print('Added '..amount..' coins to player '..targetId)
            TriggerClientEvent('bs:cs:updateUI', targetId, 'updateCS', {
                playerCoins = fetchUserCoins(targetId)
            })
        end
    else
        -- Add permission check here for in-game admins
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getGroup() == 'admin' or xPlayer.getGroup() == 'superadmin' then
            local targetId = tonumber(args[1])
            local amount = tonumber(args[2])
            
            if not targetId or not amount then
                TriggerClientEvent('coinShop:notify', source, 'Usage: /addcoins [id] [amount]')
                return
            end
            
            local success = updateUserCoins(targetId, 'add', amount)
            if success then
                TriggerClientEvent('coinShop:notify', source, 'Added '..amount..' coins to player '..targetId)
                TriggerClientEvent('bs:cs:updateUI', targetId, 'updateCS', {
                    playerCoins = fetchUserCoins(targetId)
                })
            end
        else
            TriggerClientEvent('coinShop:notify', source, 'You do not have permission to use this command')
        end
    end
end, true)

-- Remove coins command (EXISTING - showing for reference)
RegisterCommand('removecoins', function(source, args)
    if source == 0 then
        local targetId = tonumber(args[1])
        local amount = tonumber(args[2])
        
        if not targetId or not amount then
            print('Usage: removecoins [id] [amount]')
            return
        end
        
        local success = updateUserCoins(targetId, 'remove', amount)
        if success then
            print('Removed '..amount..' coins from player '..targetId)
            TriggerClientEvent('bs:cs:updateUI', targetId, 'updateCS', {
                playerCoins = fetchUserCoins(targetId)
            })
        end
    else
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getGroup() == 'admin' or xPlayer.getGroup() == 'superadmin' then
            local targetId = tonumber(args[1])
            local amount = tonumber(args[2])
            
            if not targetId or not amount then
                TriggerClientEvent('coinShop:notify', source, 'Usage: /removecoins [id] [amount]')
                return
            end
            
            local success = updateUserCoins(targetId, 'remove', amount)
            if success then
                TriggerClientEvent('coinShop:notify', source, 'Removed '..amount..' coins from player '..targetId)
                TriggerClientEvent('bs:cs:updateUI', targetId, 'updateCS', {
                    playerCoins = fetchUserCoins(targetId)
                })
            end
        else
            TriggerClientEvent('coinShop:notify', source, 'You do not have permission to use this command')
        end
    end
end, true)

-- NEW: Create redeem code command
RegisterCommand('createcode', function(source, args)
    if source == 0 then -- Console only
        local code = args[1]
        local amount = tonumber(args[2])
        
        if not code or not amount then
            print('Usage: createcode [code] [amount]')
            print('Example: createcode WELCOME2024 500')
            return
        end
        
        exports['coinShop']:AddRedeemCode(code, amount)
        print('Created redeem code: '..code..' for '..amount..' coins')
    else
        TriggerClientEvent('coinShop:notify', source, 'This command can only be used from the server console')
    end
end, true)

-- NEW: Set player coins (instead of add/remove)
RegisterCommand('setcoins', function(source, args)
    if source == 0 then
        local targetId = tonumber(args[1])
        local amount = tonumber(args[2])
        
        if not targetId or not amount then
            print('Usage: setcoins [id] [amount]')
            return
        end
        
        -- Remove all coins first
        local currentCoins = fetchUserCoins(targetId)
        updateUserCoins(targetId, 'remove', currentCoins)
        
        -- Then add the new amount
        local success = updateUserCoins(targetId, 'add', amount)
        if success then
            print('Set player '..targetId..' coins to '..amount)
            TriggerClientEvent('bs:cs:updateUI', targetId, 'updateCS', {
                playerCoins = fetchUserCoins(targetId)
            })
        end
    end
end, true)